
#include "CTaintAnalysis.h"
//#include "intra-ctaint.h"
//#include "context-inter-ctaint.h"
#include "context-insensitive-ctaint.h"

#include <llvm/Support/InstIterator.h>
#include <llvm/Target/Mangler.h>
#include <llvm/DebugInfo.h>

#include <fstream>
#include <sstream>
#include <algorithm>

char CTaintAnalysis::ID = 0;

const string CTaintAnalysis::_taintId("[STTAL]");
const string CTaintAnalysis::_taintSourceFile("cfg/sources.cfg");
const string CTaintAnalysis::_taintSinkFile("cfg/sinks.cfg");

const int CTaintAnalysis::_SOURCE_ARG_RET(-1);
const int CTaintAnalysis::_SOURCE_ARG_INVALID_MIN(-2);
const int CTaintAnalysis::_FUNCTION_NOT_SOURCE(100);

map<string, int> CTaintAnalysis::_taintSources;
typedef map<string, int>::value_type sourceType;

vector<string> CTaintAnalysis::_taintSinks;

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

			addTaintSource(source, pos);
		}
	}

	string r("__isoc99_scanf");
	addTaintSource(r, 1);

	r = "__isoc99_sscanf";
	addTaintSource(r, 1);

	srcFile.close();
}

void CTaintAnalysis::readTaintSinkConfig() {
	//Open the file with taint source functions listed
	std::ifstream srcFile(_taintSinkFile.c_str());
	string line;

	while (!srcFile.eof()) {
		std::getline(srcFile, line);
		if (!line.empty())
			_taintSinks.push_back(line);
	}

	srcFile.close();
}

CTaintAnalysis::CTaintAnalysis() : ModulePass(ID),
									_intraWasRun(false),
									_interRunning(false),
									_ctxInterRunning(false),
									_pointerMain(0),
									_super(0),
									_predInst(0),
									_module(0) {
	_super = static_cast<InstVisitor<CTaintAnalysis> *>(this);
	readTaintSourceConfig();
	readTaintSinkConfig();
}

CTaintAnalysis::~CTaintAnalysis() {

	{//Delete _summaryTable info
		Function *F = 0;
		for(unsigned k = 0; k < _allProcsTPOrder.size(); ++k) {
			F = _allProcsTPOrder[k];
			vector<bool> * argVec = _summaryTable[F];
			delete argVec;
		}
	}

	{//Delete warning info
		Function *F = 0;
		for(unsigned k = 0; k < _allProcsTPOrder.size(); ++k) {
			F = _allProcsTPOrder[k];
			AnalysisWarnings * warnings = _allWarnings[F];
			delete warnings;
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

	_module = &m;

	_aliasInfo = &getAnalysis<EQTDDataStructures>();

	_cg = &getAnalysis<CallGraph>();

	assert(_aliasInfo && "An instance of DSA could not be created!");

	assert(_cg && "An instance of the callgraph could not be created!");

	Function *f = 0;
	for(CallGraph::iterator pc = _cg->begin(), Epc = _cg->end();
			pc != Epc;
			++pc) {
		f = const_cast<Function *>(pc->first);

		//We only handle function defined in the code
		if (!f)
			continue;

		if(f->isDeclaration())
			continue;

		string fName(f->getName().str());
		log("discovered function " + fName);


		//TODO: use function signature as key instead
		_signatureToFunc[fName] = f;
		_allProcsTPOrder.push_back(f);

		{//Initialize _summaryTable info.
			vector<bool> *argVec = new vector<bool>;
			for(Function::arg_iterator A = f->arg_begin(), E=f->arg_end(); A != E; ++A) {
				if (!A->getType()->isVoidTy())
					argVec->push_back(false);
			}
			//Add an element if the function has a non-void type
			if (!f->getReturnType()->isVoidTy())
				argVec->push_back(false);

			_summaryTable[f] = argVec;

			_allWarnings[f] = createAnalysisWarning();
		}

		{//Initialize alias info from DSA
			if (_aliasInfo->hasDSGraph(*f))
				_functionToDSGraph[f] = _aliasInfo->getDSGraph(*f);
		}

		if ( !_pointerMain && 0 == fName.compare(ENTRY_POINT) ) {
			_pointerMain = f;
		}
	}

	//We need the list of procedure in reverse topological order

	_allProcsRTPOrder.insert(_allProcsRTPOrder.begin(), _allProcsTPOrder.begin(), _allProcsTPOrder.end());

	std::reverse(_allProcsRTPOrder.begin(), _allProcsRTPOrder.end());

	//_aliasInfo->print(errs(), &m);

	//log("Now performs the intraprocedural analysis");
	//CTaintIntraProcedural intraFlow(this);
	//CTaintContextInterProcedural contextInterFlow(this);
	InterProcedural interFlow(this);

	//interFlow.analyze();

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

void CTaintAnalysis::setDiff(set<Value *> &A,
                             set<Value *> &B, 
                             set<Value *> &AMinusB) {
    AMinusB.clear();
    for(set<Value *>::iterator ps = A.begin(), Eps = A.end();
            ps != Eps;
            ++ps) {
        Value *e = *(ps);
        if (0 == B.count(e))
            AMinusB.insert(e);
      }
}

bool CTaintAnalysis::merge(BasicBlock *curBB, BasicBlock *succBB) {
	set<Value *> &curBBOut = _IN[&curBB->back()];
	set<Value *> &succBBIn = _OUT[&succBB->front()];

	set<Value *> inDiff;
	setDiff(curBBOut, succBBIn, inDiff);
	
        if (!inDiff.empty())
	  succBBIn.insert(inDiff.begin(), inDiff.end());
	 
	return (inDiff.size() > 0);
}

inline void CTaintAnalysis::mergeCopyPredOutFlowToInFlow(Instruction &predInst, Instruction &curInst) {
  _IN[&curInst].insert(_OUT[&predInst].begin(), _OUT[&predInst].end());
  _OUT[&curInst].insert(_IN[&curInst].begin(), _IN[&curInst].end());
}

/**
 * Given a value v, and a DSGraph dsg (a DSGraph represents the
 * aliasing relationship within a function), this method checks
 * if v has aliases in function F with dsg as DSGraph.
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
				if (vAlias && v != vAlias)
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
	Function *f = I->getParent()->getParent();
	DSGraph *dsg = _functionToDSGraph[f];
	insertToOutFlow(I, v, dsg);
  }
}

/**
 * Adds value 'v' as tainted by instruction 'I'
 */
void CTaintAnalysis::insertToOutFlow(Instruction *I, Value *v, DSGraph *dsg) {

	assert(I && "The instruction to which an outflow is to be added must be non null!");
	assert(v && "The value to insert in the outflow of an instruction must be non null!");

	_OUT[I].insert(v);
	//DEBUG
	//v->print(errs()); errs() << " gets tainted\n";

	/**
	 * Mark all aliases of v as tainted.
	 */
	if (dsg) {
		vector<Value *> vAliases;
		getAliases(v, dsg, vAliases);
		int s = vAliases.size();
		for(int k = 0; k < s; ++k) {
			_OUT[I].insert(vAliases[k]);
			//DEBUG
			//vAliases[k]->print(errs());
			//errs() << " \t also gets tainted\n";
		}
	}
}

/**
 * Checks if there is an edge (caller, callee) in the callgraph
 */
bool CTaintAnalysis::calls(Function *caller, Function *callee) {
	  CallGraphNode *cn = (*_cg)[caller];
	  if (cn) {
		//There a node for the caller in the callgraph
	    Function *curCallee = 0;
	    //Iterate over functions called by 'caller'
	    for(CallGraphNode::iterator pn = cn->begin(), Epn = cn->end();
		pn != Epn;
		++pn) {
	      curCallee = (*pn).second->getFunction();
	      if (curCallee == callee) return true;
	    }
	  }
	  return false;
	}

/**
 * Returns 'true' if value 'v' is tainted at the program point before
 * instruction 'I'.
 */
bool CTaintAnalysis::isValueTainted(Instruction *I, Value *v) {
	return ( 0 < _IN[I].count(v) );
}

void CTaintAnalysis::visit(Instruction &I) {
  if (_predInst)
    mergeCopyPredOutFlowToInFlow(*_predInst, I);
  //errs() << "## pred: "; _predInst->print(errs()); errs()<<"\n";
  //printIn(I);
  _super->visit(I);
  _predInst = &I;
}

void CTaintAnalysis::visitLoadInst(LoadInst &I) {
	//DEBUG
	//errs() << "LOAD [p=*q]: ";
	//I.print(errs());
	//errs() << "\n";

	Value *q = I.getPointerOperand();

	if ( isValueTainted(&I, q)) {
		insertToOutFlow(&I, &I);
	}
}

void CTaintAnalysis::visitStoreInst(StoreInst &I)
{
	//DEBUG
	//errs() << "STORE [*p=q]: ";
	//I.print(errs());
	//errs() << "\n";

	Value *q = I.getValueOperand();
	Value *p = I.getPointerOperand();

	if ( isValueTainted(&I, q)) {
		insertToOutFlow(&I, p);
	}
}

void CTaintAnalysis::visitCallInst(CallInst & I)
{
	//DEBUG
	//errs() << "CALL [call func]: ";
	//I.print(errs());
	//errs() << "\n";

	if (!_intraWasRun) {
		//The intraprocedural analysis has not been run yet
		Function *callee = I.getCalledFunction();
		if (!callee)
			return ;

		string calleeName = callee->getName().str();
		int arg_pos = isTaintSource(calleeName);

		if ( _FUNCTION_NOT_SOURCE == arg_pos ) return;

		int maxParams = I.getNumArgOperands();

		if ( _SOURCE_ARG_INVALID_MIN < arg_pos && arg_pos < maxParams ) {
			Value *taintedArg = 0;

			if (_SOURCE_ARG_RET == arg_pos)
				taintedArg = &I;
			else
				taintedArg = I.getArgOperand(arg_pos);

			insertToOutFlow(&I, taintedArg);
			//DEBUG
			//errs() << "Found a source " << calleeName << " with arg_pos " << arg_pos << "\n";
		}
		else {
			std::ostringstream msg;
			msg << "Invalid argument position (" << arg_pos << ")"
					<< " max parameters is " << maxParams;
			log(msg.str());
		}
	}
	else if (_ctxInterRunning) {
		//The context-sensitive analysis is running
		static unsigned depth = 0;

		if (depth > 2)
			return;

		Function *callee = I.getCalledFunction();
		if (!callee)
			return ;

		Function *caller = I.getParent()->getParent();

		if (caller && !calls(caller, callee)) {
		  //DEBUG
		  //errs() << "## " << caller->getName() << " does not call "
		         //<< callee->getName() << " in our callgraph \n";
		  return ;
		}

		depth += 1;
		handleContextCall(I, *callee);
		depth -= 1;
	}
	else if (_interRunning) {
		//Context-insensitive analysis
		Function *callee = I.getCalledFunction();
		if (!callee) return ;
		vector<bool> *calleeFormals = _summaryTable[callee];

		//Check if the function has a non-void type
		if (calleeFormals && !callee->getReturnType()->isVoidTy()) {
			//the last element of the vector is the return value taint information
			bool retIsTaint = calleeFormals->back();
			if (retIsTaint) {
				insertToOutFlow(&I, &I);
			}
		}

		string calleeName = callee->getName().str();
		bool foundSink = (_taintSinks.end() != find(_taintSinks.begin(), _taintSinks.end(), calleeName));

		if (foundSink) {
			//DEBUG
			//errs() << "Found sink function " << calleeName << "\n";
			handleSinks(I, *callee);
		}
	}
}

void CTaintAnalysis::handleSinks(CallInst &I, Function &callee)
{
	StringRef calleeName = callee.getName();

	unsigned argNr = I.getNumArgOperands();
	Value *curArg = 0;

	for(unsigned k = 0; k < argNr; ++k) {
	    curArg = I.getArgOperand(k);
	    if ( isValueTainted(&I, curArg) ) {
	    	int line = -1;
	    	if (MDNode *N = I.getMetadata("dbg")) { // this if is never executed
	    		DILocation Loc(N);
	    		line = Loc.getLineNumber();
	    	}
	    	Function *caller = I.getParent()->getParent();
	    	AnalysisWarnings *warnings = _allWarnings[caller];
	    	if (!warnings) {
	    		errs() << "No AnalysisWarning data struture was instantiated for this callee!";
	    	}
	    	else {
	    		bool isOnNewLine = warnings->addIssue(line);
	    		if (isOnNewLine) {
	    			//Emit a new warning
	    			errs() << "## [WARNING][format string vulnerability]: \n\tTainted value";
	    			curArg->print(errs());
	    			errs() << " (" << k
	    					<< ") is used in sink function '" << calleeName
	    					<< "' [line " << line << "]\n";
	    		}
	    	}
	    }
	}

}

/**
 * This method is responsible for the analysis of a callee during
 * the context-sensitive analysis.
 */
void CTaintAnalysis::handleContextCall(CallInst &I, Function &callee)
{
	//DEBUG
	//errs() << "CONTEXT CALL [call func]: ";
	//I.print(errs());
	//errs() << "\n";
	
	//Now copy call arguments taint information into
	//the callee formal parameter taint information
	int argNr = I.getNumArgOperands();
	vector<bool> *calleeFormals = _summaryTable[&callee];

	if (!calleeFormals) {
		//DEBUG
		//errs() << "\tWe do not analyze function '" << callee.getName() << "'\n";
	}
	else {
	  Instruction &calleeFirstI = callee.front().front();
	  Function::arg_iterator pf = callee.arg_begin(), Epf = callee.arg_end();

	  int k = 0;
	  Value *curArg;
	  while (pf != Epf && k < argNr) {
	    Argument &fml = (*pf);
	    curArg = I.getArgOperand(k);
	    //If the call argument is tainted and the callee's corresponding formal
	    //parameter has not already been marked as tainted by previous
	    //analyzes (e.g. intraprocedural), then copy call arguments taint
	    //information into the callee.
	    if ( !(*calleeFormals)[k] && isValueTainted(&I, curArg) )
	      _IN[&calleeFirstI].insert(&fml); 
	    ++pf;
	    ++k;
	  }

	  Instruction &calleeLastI = callee.back().back();

	  //Now analyze the callee
	  //We set the predecessor instruction before analysis of the callee
	  _predInst = &I;
	  _super->visit(callee);
	  
	  set<Value *> outDiff;
	  setDiff(_OUT[&calleeLastI], _IN[&calleeFirstI], outDiff);

	  DSGraph * calleeDSG = _functionToDSGraph[&callee];
	  vector<Value *> fmlAliases; 
	  pf = callee.arg_begin();
	  Epf = callee.arg_end();
	  k = 0; //To iterate over vector calleeFormals
	  curArg = 0;
	  while (pf != Epf && k < argNr) {
	    Argument &fml = (*pf);
	    curArg = I.getArgOperand(k);
	    getAliases(&fml, calleeDSG, fmlAliases);
	    fmlAliases.insert(fmlAliases.begin(), &fml);
	    for(unsigned j = 0; j < fmlAliases.size(); ++j) {
	      if ( !(*calleeFormals)[k] && outDiff.count(fmlAliases[j]) > 0 ) {
	        setProcArgTaint(&callee, k, true);
	        if ( !isValueTainted(&I, curArg) )
	          insertToOutFlow(&I, curArg);
	        break;
	      }
	    }
	    ++pf;
	    ++k;
	  }
	}
}

void CTaintAnalysis::visitReturnInst(ReturnInst &I) {

	if (_ctxInterRunning)
		return;

	Function *F = I.getParent()->getParent();
	//DEBUG
	//errs() << "Analyzing return instruction for " << F->getName() << "\n";
	Value *retVal = I.getReturnValue();

	//TODO: check if this could happen
	if (!retVal || retVal->getType()->isVoidTy()){
	  //DEBUG
	  //errs() << "No return value for: " << F->getName() << "\n";
	  return;
	}

	//DEBUG
	//errs() << "\t";
	//retVal->print(errs());
    //errs()<< "\n";
	
	//printIn(I);

	if (isValueTainted(&I, retVal)) {
	  //DEBUG
	  //errs() << "\tis tainted\n";
	  unsigned retPos = _summaryTable[F]->size() - 1;
	  setProcArgTaint(F, retPos, true);
	}
}

static RegisterPass<CTaintAnalysis>
X("ctaintmod", "CTaint Module Pass",
		false /* Only looks at CFG */,
		true /* Analysis Pass */);

