
#include "CTaintAnalysis.h"
#include "CTaintIntraProcedural.h"

#include <llvm/Support/InstIterator.h>
#include <llvm/Target/Mangler.h>

#include <fstream>
#include <sstream>

char CTaintAnalysis::ID = 0;

const string CTaintAnalysis::_taintId("[STTAL]");

const string CTaintAnalysis::_taintSourceFile("cfg/sources.cfg");

const int CTaintAnalysis::_sourceArgRet(-1);

const int CTaintAnalysis::_SOURCE_ARG_INVALID_MIN(-2);

const int CTaintAnalysis::_FUNCTION_NOT_SOURCE(100);

map<string, int> CTaintAnalysis::_taintSources;
typedef map<string, int>::value_type sourceType;

inline void CTaintAnalysis::log(const string &msg) {
	errs() << _taintId << msg << '\n';
}

void CTaintAnalysis::addTaintSource(string &source, unsigned taintedPos) {
	map<string, int>::iterator it;
	it = _taintSources.find(source);

	if (it != _taintSources.end())
		it->second = taintedPos;
	else
		_taintSources.insert( sourceType(source, taintedPos) );
}

void CTaintAnalysis::readTaintSourceConfig() {
	//Open the file with taint source functions listed
	std::ifstream srcFile(_taintSourceFile.c_str());
	string line;
	string source;
	string arg;
	int pos;

	while (!srcFile.eof()) {
		std::getline(srcFile, line);
		if (!line.empty()) {
			size_t coma = line.find(SOURCE_ARG_DELIM);
			source = line.substr(0, coma);

			arg = line.substr(coma+1);
			pos = atoi(arg.c_str());

			//TODO: use the mangler here Mangler aMangler
			string s("__isoc99_");
			s.append(source);
			addTaintSource(s, pos);
		}
	}

	srcFile.close();
}

CTaintAnalysis::CTaintAnalysis() : ModulePass(ID),
									_intraFlag(false),
									_interFlag(false),
									_interContextSensitiveFlag(false),
									_pointerMain(0) {
	readTaintSourceConfig();
}

CTaintAnalysis::~CTaintAnalysis() {

	{//Delete _summaryTable info
		Function *F = 0;
		for(unsigned k = 0; k < _allProcs.size(); ++k) {
			F = _allProcs[k];
			vector<bool> * argVec = _summaryTable[F];
			delete argVec;
		}
	}

}

void CTaintAnalysis::getAnalysisUsage(AnalysisUsage &AU) const {
	AU.setPreservesAll();
	AU.addRequired<CallGraph> ();
	AU.addRequired<EQTDDataStructures> ();
}

void CTaintAnalysis::printOut(Instruction &I) {
	set<Value *> &out = _OUT[&I];
	errs() << "printOut for: "; I.print(errs()); errs() << "\n";
	for( set<Value *>::iterator it = out.begin(), itEnd = out.end();
			it != itEnd;
			++it) {
		(*it)->print(errs());
		errs() << "\n";
	}
	errs() << "printOut for: "; I.print(errs()); errs() << " END\n";
}

void CTaintAnalysis::printIn(Instruction &I) {
	set<Value *> &in = _IN[&I];
	for( set<Value *>::iterator it = in.begin(), itEnd = in.end();
			it != itEnd;
			++it) {
		(*it)->print(errs());
		errs() << "\n";
	}
}

bool CTaintAnalysis::runOnModule(Module &m) {
	log("module identifier is " + m.getModuleIdentifier());

	_aliasInfo = &getAnalysis<EQTDDataStructures>();

	assert(_aliasInfo && "An instance of DSA could not be created!");

	for (Module::iterator b = m.begin(), be = m.end(); b != be; ++b) {

		Function *f = dyn_cast<Function> (b);

		//We only handle function defined in the code
		if (f && f->isDeclaration())
			continue;

		string fName(f->getName().str());
		log("discovered function " + fName);

		//TODO: use function signature as key instead
		_signatureToFunc[fName] = f;
		_allProcs.push_back(f);

		{//Initialize _summaryTable info.
			vector<bool> *argVec = new vector<bool>;
			for(Function::arg_iterator A = f->arg_begin(), E=f->arg_end(); A != E; ++A) {
				argVec->push_back(false);
			}
			//Add an element if the function has a non-void type
			if (!f->getReturnType()->isVoidTy())
				argVec->push_back(false);

			_summaryTable[f] = argVec;
		}

		{//Initialize alias info from DSA
			if (_aliasInfo->hasDSGraph(*f))
				_functionToDSGraph[f] = _aliasInfo->getDSGraph(*f);
		}

		if ( !_pointerMain && 0 == fName.compare(ENTRY_POINT) ) {
			_pointerMain = f;
		}
	}

	_aliasInfo->print(errs(), &m);

	log("Now performs the intraprocedural analysis");
	CTaintIntraProcedural intraFlow(this);
	_intraFlag = true;

	return false;
}


/**
 * Checks if the function with name 'funcName' taints any
 * of its parameters.
 */
int CTaintAnalysis::isTaintSource(string &funcName) {
	map<string, int>::iterator res;
	res = _taintSources.find(funcName);
	if (res != _taintSources.end())
		return res->second;

	return _FUNCTION_NOT_SOURCE;
}

bool CTaintAnalysis::merge(BasicBlock *curBB, BasicBlock *succBB) {
	bool wasMerged = false;
	set<Value *> &curBBOut = _IN[&curBB->back()];
	set<Value *> &succBBIn = _OUT[&succBB->front()];

	Value *aVal = 0;
	for(set<Value *>::iterator V = curBBOut.begin(), E=curBBOut.end();
			V != E;
			++V) {
		aVal = (*V);
		if (0 == succBBIn.count(aVal)) {
			succBBIn.insert(aVal);
			wasMerged = true;
			//errs() << "## merged \n";
			//aVal->print(errs());
			//errs() << "\n";
		}
	}

	return wasMerged;
}

inline void CTaintAnalysis::mergeCopyPredOutFlowToInFlow(Instruction &predInst, Instruction &curInst) {
	_IN[&curInst].insert(_OUT[&predInst].begin(), _OUT[&predInst].end());
}

/**
 * Given a value v, and a DSGraph dsg (a DSGraph
 * represents the aliasing relationship within a function),
 * this method checks if v has aliases in function F with
 * dsg as DSGraph.
 */
void CTaintAnalysis::getAliases(Value *v,
								DSGraph *dsg,
								vector<Value *> &aliases) {

	if (dsg && dsg->hasNodeForValue(v)) {
		//If value v is sharing the same DSNode
		//as another value w, then mayAlias(v,w)
		DSNodeHandle &vHandle = dsg->getNodeForValue(v);
		DSGraph::ScalarMapTy &scalarMap = dsg->getScalarMap();

		DSGraph::ScalarMapTy::iterator sIt = scalarMap.begin();
		DSGraph::ScalarMapTy::iterator EsIt = scalarMap.end();

		const Value *vAlias = 0;
		while(sIt != EsIt) {
			DSNodeHandle &cur = (*sIt).second;
			if (cur == vHandle) {
				vAlias = (*sIt).first;
				if (vAlias)
					aliases.push_back(const_cast<Value *>(vAlias));
			}
			++sIt;
		}
	}
}

/**
 * Adds value 'v' to the set OUT[I], denoting that instruction
 * I taints value 'v'.
 */
void CTaintAnalysis::insertToOutFlow(Instruction *I, Value *v) {

	int n = _OUT[I].count(v);

	if (0 == n) {
		_OUT[I].insert(v);
		v->print(errs()); errs() << " gets tainted\n";

		Function *f = I->getParent()->getParent();
		DSGraph *dsg = _functionToDSGraph[f];

		/**
		 * Mark all aliases of v as tainted.
		 */
		if (dsg) {
			vector<Value *> vAliases;
			getAliases(v, dsg, vAliases);
			int s = vAliases.size();
			for(int k = 0; k < s; ++k) {
				_OUT[I].insert(vAliases[k]);
				vAliases[k]->print(errs() << " \n\t also gets tainted\n");
			}
		}

		//For each pointer p aliasing v, also add 'p' in OUT[I] to indicate
		//that instruction I taints value 'p'.
		/*AliasSet * as = _curAST->getAliasSetForPointerIfExists(v, 0, 0);
		if (as && as->isMayAlias()) {
			for(AliasSet::iterator it = as->begin(), itE = as->end(); it != itE; ++it) {
				Value *p = it->getValue();
				_OUT[I].insert(p);
				//p->print(errs() << " \n\t also gets tainted\n");
				//v->print(errs()); errs() << "\n";
			}
		}*/
	}
}

/**
 * Returns 'true' if value 'v' is tainted at the program point before
 * instruction 'I'.
 */
bool CTaintAnalysis::isValueTainted(Instruction *I, Value *v) {

	if (_IN[I].empty()) return false;

	if (0 < _IN[I].count(v)) return true;

	/*Function *f = I->getParent()->getParent();
	DSGraph *dsg = _functionToDSGraph[f];

	if (dsg) {
		vector<Value *> vAliases;
		getAliases(v, dsg, vAliases);
		Value *curAlias = 0;
		int s = vAliases.size();
		for(int k = 0; k < s; ++k) {
			curAlias = vAliases[k];
			if (0 < _IN[I].count(curAlias)) {
				errs() << "An alias: ";
				vAliases[k]->print(errs());
				errs() << " is tainted\n";
				return true;
			}
		}
	}*/

	/*AliasSet * as = _curAST->getAliasSetForPointerIfExists(v, 0, 0);
	if (as && as->isMayAlias()) {
		for(AliasSet::iterator it = as->begin(), itE = as->end(); it != itE; ++it) {
			Value *p = it->getValue();
			if ( _IN[I].count(p) > 0 )
				return true;
		}
	}*/

	return false;
}

/*AliasSet *CTaintAnalysis::getAliasSetForValue(Value *v, Function *F) {
	AliasSetTracker * ast = getAliasSetTracker(F);
	if (ast) return ast->getAliasSetForPointerIfExists(v, 0, 0);
	return 0;
}*/

void CTaintAnalysis::visitStoreInst(StoreInst &I)
{
	errs() << "STORE [*p=q]: ";
	I.print(errs());
	errs() << "\n";

	Value *q = I.getValueOperand();
	Value *p = I.getPointerOperand();

	if ( isValueTainted(&I, q)) {
		insertToOutFlow(&I, p);
	}
}

void CTaintAnalysis::visitCallInst(CallInst & I)
{
	errs() << "CALL [call func]: ";
	I.print(errs());
	errs() << "\n";

	Function *callee = I.getCalledFunction();

	//TODO: Check why some call statements may have a null callee
	if (!callee) {
		errs() << I.getParent()->getParent()->getName()
			   << " nas no callee at: "; I.print(errs()); errs() << " !\n";
		return;
	}

	string calleeName = callee->getName().str();
	int arg_pos = isTaintSource(calleeName);

	if ( _FUNCTION_NOT_SOURCE == arg_pos ) return;

	int maxParams = I.getNumArgOperands();

	if ( _SOURCE_ARG_INVALID_MIN < arg_pos && arg_pos < maxParams ) {
		Value *taintedArg = I.getArgOperand(arg_pos);
		insertToOutFlow(&I, taintedArg);
		//printOut(I);
		//errs() << "Found a source " << calleeName << "\n";
		
		for (Value::use_iterator u = taintedArg->use_begin(), 
		    e = taintedArg->use_end(); u != e; 
		    ++u) {
		  Value *aTaintedUse = *u;
		  if (Instruction *I = dyn_cast<Instruction>(aTaintedUse)) {
		        //errs() << "##Setting: "; aTaintedUse->print(errs()); errs() << " as tainted:\n";			
			insertToOutFlow(I, aTaintedUse); 
		  }
		}
	}
	else {
		std::ostringstream msg;
		msg << "Invalid argument position (" << arg_pos << ")"
			<< " max parameters is " << maxParams;
		log(msg.str());
	}
}

void CTaintAnalysis::visitReturnInst(ReturnInst &I) {
	Function *F = I.getParent()->getParent();
	errs() << "Analyzing return instruction for " << F->getName() << "\n";
	Value *retVal = I.getReturnValue();

	//TODO: check if this could happen
	if (!retVal) return;

	Instruction *defI = 0;
	//Check definitions statements that may taint this return value
	for (User::op_iterator i = I.op_begin(), e = I.op_end(); i != e; ++i) {
		//Value *v = *i;
		defI = dyn_cast<Instruction>(*i);
		if (defI) {
			if (isValueTainted(&I, defI)) {
				errs() << "\treturn value"; retVal->print(errs()); errs() 
			       	<< " of " << F->getName() << " is tainted from\n";
				errs() << "\t "; defI->print(errs()); errs() << "\n";
				setProcArgTaint(F, F->getNumOperands()+1, true);
				return;
			}
		}
	}
}

static RegisterPass<CTaintAnalysis>
X("ctaintmod", "CTaint Module Pass",
		false /* Only looks at CFG */,
		true /* Analysis Pass */);

