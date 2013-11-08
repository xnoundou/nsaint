#include <llvm/Pass.h>
#include <llvm/IR/Module.h>
#include <llvm/Analysis/LoopInfo.h>
#include <llvm/Support/InstIterator.h>
#include <llvm/InstVisitor.h>
#include <llvm/IR/Instruction.h>
#include <llvm/Analysis/CallGraph.h>
#include <llvm/Analysis/AliasAnalysis.h>
#include <llvm/Analysis/AliasSetTracker.h>
#include <llvm/Target/Mangler.h>
#include <llvm/Support/CFG.h>

#include <fstream>

#include <sstream>
#include <algorithm>
#include <iterator>

#include <vector>
#include <string>
using std::vector;

using std::string;

#include <set>
using std::set;

#include <map>
using std::map;

using std::pair;

using namespace llvm;

namespace {

#define ENTRY_POINT "main"
#define SOURCE_ARG_DELIM ","

//Data structure representing the analysis flowset data type
//TODO: use StringMap from llvm
typedef map<Value *, vector<Instruction &> >  FlowSet;
typedef map<Value *, vector<Instruction &> >::iterator ItFlowSet;
typedef map<Value *, vector<Instruction &> >::value_type ValTypeFlowSet;

typedef vector< pair<bool, string> > FunctionParam;

struct CTaintAnalysis : public ModulePass,
						public InstVisitor<CTaintAnalysis> {
	static char ID;

	CTaintAnalysis();
	void getAnalysisUsage(AnalysisUsage & AU) const;

	virtual bool runOnModule(Module & F);

	void visitLoadInst(LoadInst &I);
	void visitStoreInst(StoreInst &I);
	void visitGetElementPtrInst(GetElementPtrInst &I);
	void visitVAArgInst(VAArgInst & I);
	void visitCallInst(CallInst &I);

private:
	const static string _taintId;
	const static string _taintSourceFile;
	static map<string, int> _taintSources;

	static void addTaintSource(string &source, unsigned taintedPos);
	static void readTaintSourceConfig();
	unsigned isTaintSource(string &F);
	inline Function * getFunction(Instruction &I);

	/** Has the intraprocedural analysis been run */
	bool _intraFlag;

	/** Has the interprocedural Context-Insenstive analysis been run */
	bool _interFlag;

	/** Was the AliasSetTracker already initialized */
	bool _aliasFlag;

	/** Has the interprocedural Context-Senstive analysis been run */
	bool _interContextSensitiveFlag;

	/** Pointer to the 'main' function */
	Function *_pointerMain;

	/** Pointer the 'main' function's first instruction */
	Instruction *_firstInstMain;

	AliasAnalysis *_aa;

	AliasSetTracker *_curAST;

	DenseMap<Function*, AliasSetTracker*> _functionToAliasSetMap;

	/**
	 * Map from program funtion signatures as string to
	 * Function pointers
	 */
	map<string, Function*> _signatureToFunc;
	typedef map<string, Function*>::iterator ItFunction;

	/**
	 * Summary table where we store function parameters and
	 * return value taunt information
	 */
	map<string, FunctionParam> _summaryTable;
	typedef map<string, FunctionParam>::iterator itSummaryTable;

	FlowSet _IN;
	FlowSet _OUT;

	void printIn(Instruction &I);
	void printOut(Instruction &I);
	void copyInFlowToOutFlow(Instruction &I);

	inline static void log(const string &msg) {
		errs() << _taintId << msg << '\n';
	}

	void initDataFlowSet(vector<Instruction *> &workList);

	void collectAliasInfo();
	Instruction * next(vector<Instruction *> &workList);

	bool smaller(Instruction &I, Instruction &N, set<Value *> &inOutDiff);

	void getAllBeforeNextTerminator(Instruction *I, vector<Instruction *> &succs);
	void getSuccessors(Instruction *I, vector<Instruction *> &succs);

	void merge(set<Value *> &fs1, set<Value *> &fs2, set<Value *> &res);

	void intraFlow();
	void interFlow(Function *caller, Instruction &inst);
};

char CTaintAnalysis::ID = 0;

const string CTaintAnalysis::_taintId("[STTAL]");

const string CTaintAnalysis::_taintSourceFile("cfg/sources.cfg");

map<string, int> CTaintAnalysis::_taintSources;
typedef map<string, int>::value_type sourceType;

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

inline Function * CTaintAnalysis::getFunction(Instruction &I) {
	return I.getParent()->getParent();
}

CTaintAnalysis::CTaintAnalysis() : ModulePass(ID) {
	_pointerMain = 0;
	_firstInstMain = 0;
	_intraFlag = false;
	_interFlag = false;
	_aliasFlag = false;
	_interContextSensitiveFlag = false;

	readTaintSourceConfig();
}

void CTaintAnalysis::getAnalysisUsage(AnalysisUsage &AU) const {
	AU.setPreservesAll();
	AU.addRequired<LoopInfo> ();
	AU.addRequired<CallGraph> ();
	AU.addRequired<AliasAnalysis> ();
}

void CTaintAnalysis::interFlow(Function *caller, Instruction &inst) {
	if (!_intraFlag) {
		intraFlow();
	}
}

void CTaintAnalysis::intraFlow() {
	if ( _intraFlag )
		return;

	Function *cur = 0;
	for(ItFunction f = _signatureToFunc.begin(), fEnd = _signatureToFunc.end(); f != fEnd; ++f) {
		cur = f->second;
		visit(cur);
	}

	_intraFlag = true;
}

void CTaintAnalysis::collectAliasInfo() {
	if ( _aliasFlag )
		return;

	Function *F = 0;
	AliasSetTracker *functionAST = 0;

	for(ItFunction itF = _signatureToFunc.begin(), itEnd = _signatureToFunc.end(); itF != itEnd; ++itF) {
		F = itF->second;
		functionAST = new AliasSetTracker(*_aa);
		_functionToAliasSetMap[F] = functionAST;
		for (inst_iterator I = inst_begin(*F), E = inst_end(*F); I != E; ++I) {
			functionAST->add(&*I);
		}
		_curAST->add(*functionAST);
	}

	_aliasFlag = true;
}

bool CTaintAnalysis::smaller(Instruction &I, Instruction &N, set<Value *> &inOutDiff) {

	std::set_difference(_OUT[&I].begin(), _OUT[&I].end(),
						_IN[&N].begin(), _IN[&N].end(),
						std::inserter(inOutDiff, inOutDiff.begin()) );

//	/errs() << " is empty ? " << inOutDiff.empty() << "\n";

	return inOutDiff.empty();
}

Instruction * CTaintAnalysis::next(vector<Instruction *> &workList) {
	Instruction *result = workList.back();
	workList.pop_back();
	return result;
}

void CTaintAnalysis::getAllBeforeNextTerminator(Instruction *I, vector<Instruction *> &succs) {
	Instruction *n = I->getNextNode();
	while( !n->isTerminator() ){
		succs.insert(succs.begin(), n);
		n = n->getNextNode();
	}
	//errs() << "size at end of getAllBeforeNextTerminator: " << succs.size() << "\n";
}

void CTaintAnalysis::getSuccessors(Instruction *I, vector<Instruction *> &succs) {
	if (I->isTerminator()) {
		TerminatorInst *T = cast<TerminatorInst> (I);
		unsigned succNr = T->getNumSuccessors();
		for(unsigned k = 0; k < succNr; ++k) {
			BasicBlock *succBB = T->getSuccessor(k);
			Instruction &succFirst = succBB->front();
			succs.insert(succs.begin(), &succFirst);
			getAllBeforeNextTerminator(&succFirst, succs);
		}
	}
	else {
		getAllBeforeNextTerminator(I, succs);
	}
	//errs() << "size at end of getSuccessors: " << succs.size() << "\n";
}

void CTaintAnalysis::printOut(Instruction &I) {
	set<Value *> &out = _OUT[&I];

	for( set<Value *>::iterator it = out.begin(), itEnd = out.end();
			it != itEnd;
			++it)
	{
		(*it)->print(errs());
		errs() << "\n";
	}
}

void CTaintAnalysis::printIn(Instruction &I) {
	set<Value *> &in = _IN[&I];

	for( set<Value *>::iterator it = in.begin(), itEnd = in.end();
			it != itEnd;
			++it)
	{
		(*it)->print(errs());
		errs() << "\n";
	}
}

void CTaintAnalysis::initDataFlowSet(vector<Instruction *> &workList){
	Function *F = 0;
	Instruction *I = 0;

	for(ItFunction itF = _signatureToFunc.begin(), itEnd = _signatureToFunc.end(); itF != itEnd; ++itF) {
		F = itF->second;

		for (inst_iterator it = inst_begin(*F), E = inst_end(*F); it != E; ++it) {
			I = &*it;

			//Initializing IN and OUT flow sets
			_OUT[I];
			_IN[I];

			workList.insert(workList.begin(), I);
		}
	}

	errs() << " _OUT size: " << _OUT.size() << "\n";
	errs() << " _IN size: " << _IN.size() << "\n";
}

bool CTaintAnalysis::runOnModule(Module &m) {
	log("module identifier is " + m.getModuleIdentifier());

	_aa = &getAnalysis<AliasAnalysis>();

	//assert (_aa && "_aa is null");

	_curAST = new AliasSetTracker(*_aa);

	for (Module::iterator b = m.begin(), be = m.end(); b != be; ++b) {

		Function *f = dyn_cast<Function> (b);

		//We only handle function defined in the code
		if (f && f->isDeclaration())
			continue;

		string fName(f->getName().str());
		log("discovered function " + fName);

		//TODO: use function signature as key instead
		_signatureToFunc[fName] = f;

		if ( !_pointerMain && 0 == fName.compare(ENTRY_POINT) ) {
			_pointerMain = f;
			_firstInstMain = &*inst_begin(_pointerMain);
		}
	}

	vector<Instruction *> workList;

	initDataFlowSet(workList);

	errs() << "worklist size at begin: " << workList.size() << "\n";

	//Adds function instructions relevant for the alias analysis pass
	collectAliasInfo();

	_curAST->print(errs());

	Instruction *I = 0;

	while(!workList.empty()) {

		I = next(workList);

		//errs() << "next inst: \n";
		//I->print(errs());
		//errs() << "\n";

		visit(*I);

		vector<Instruction *> succs;
		getSuccessors(I, succs);

		//errs() << "successor size: " << succs.size() << "\n";

		Instruction *nextSucc = 0;
		for(vector<Instruction *>::iterator its = succs.begin(), itEnd = succs.end();
				its != itEnd;
				++its )
		{
			nextSucc = *its;
			set<Value *> &inFlowFirst = _IN[nextSucc];

			set<Value *> inOutDiff;

			//errs() << "next succ: \n";
			//nextSucc->print(errs());
			//errs() << "\n";

			printOut(*nextSucc);

			//if ( !smaller(*getOutFlow(*I), *getOutFlow(*nextSucc)) ) {
			if ( !smaller(*I, *nextSucc, inOutDiff) ) {

				//errs() << "Changing inflow of nextSucc: \n";
				//nextSucc->print(errs());

				//merge operation is a union.
				inFlowFirst.insert( inOutDiff.begin(), inOutDiff.end() );

				//errs() << "\n Now will be \n";
				//printValues(*inFlowFirst);

				workList.insert(workList.begin(), nextSucc);
			}
		}
	}

	return false;
}

unsigned CTaintAnalysis::isTaintSource(string &funcName) {
	map<string, int>::iterator res;
	res = _taintSources.find(funcName);
	if (res != _taintSources.end())
		return res->second;

	return -1;
}

void CTaintAnalysis::merge(set<Value *> &fs1, set<Value *> &fs2, set<Value *> &res) {
	std::set_union( fs1.begin(), fs1.end(),
				    fs2.begin(), fs2.end(),
				    std::inserter(res, res.begin()) );
}

void CTaintAnalysis::copyInFlowToOutFlow(Instruction &I) {
	BasicBlock *BB = I.getParent();
	BasicBlock *aPred = 0;
	Instruction *pi;

	for (pred_iterator PI = pred_begin(BB), E = pred_end(BB); PI != E; ++PI) {
	  aPred = *PI;
	  pi = &aPred->back();

	  _IN[&I].insert(_IN[&I].begin(), _OUT[pi].begin(), _OUT[pi].end());
	}

}

void CTaintAnalysis::visitLoadInst(LoadInst &I)
{
	copyInFlowToOutFlow(I);
	//errs() << "a load inst" << "\n";
	//I.print(errs());
	//errs() << "\n";
}

void CTaintAnalysis::visitStoreInst(StoreInst &I)
{
	copyInFlowToOutFlow(I);

	Value *q = I.getValueOperand();

//	errs() << "STORE " << " valueOperand: \n";
	q->getType()->print(errs());
	errs() << "\n";

	if (q->getType()->isPointerTy()) {
		//COPY [p=q]
		errs() << "is pointer type" << "\n";

		Value * p = I.getPointerOperand();

		set<Value*> &inQ = _IN[&I];
		if (!inQ.empty()) {
			/*AliasSet * as = _curAST->getAliasSetForPointerIfExists(q, 0, 0);
			if(as) {
				errs() << "found alias set\n";
				as->print(errs());
			}*/
			_OUT[p].insert(_OUT[p].begin(), _IN[q].begin(), _IN[q].end());
			_OUT[p].insert(_OUT[p].begin(), I);
//			/errs() << "Adding an outflow" << "\n";
		}
	}
	else {
		//STORE [*p=q]

		errs() << "STORE [*p=q]" << "\n";

		const ilist< AliasSet > &aliasSets = _curAST->getAliasSets();
		set<Value *> &INsQ = _IN[&I];
		Value * p = I.getPointerOperand();

		errs() << "p is " << p << "\n";

		Value *curPointer = 0;

		if (!INsQ.empty()) {
			errs() << "NOTHING\n";
			for(ilist<const AliasSet>::iterator itSet = aliasSets.begin(), itEnd = aliasSets.end();
					itSet != itEnd;
					++itSet)
			{
				if (itSet->aliasesPointer(p, 0, 0, *_aa)) {

					for(AliasSet::iterator it = itSet->begin(), itEnd = itSet->end(); it != itEnd; ++it) {
						curPointer = it->getValue();
						if (!curPointer) continue;

						_OUT[curPointer].insert(_OUT[curPointer].begin(), I);
						p->print(errs() << "gets tainted");
					}
					break;
				}
				else
					errs() << "No alias matching for " << p->getName() << "\n";
			}
		}

	}
	//errs() << "Type of " << val->getName().str()
	//		<< " is ";
	//val->getType()->print(errs());
}

void CTaintAnalysis::visitGetElementPtrInst(GetElementPtrInst &I)
{
	copyInFlowToOutFlow(I);
}

/*
 * Interprocedural analysis
 */
void CTaintAnalysis::visitCallInst(CallInst & aCallInst)
{
	copyInFlowToOutFlow(aCallInst);

	if (_intraFlag) {

	}
	else {
		//SOURCE[r = call func(a0, a1, ..., an)]
		//Intraprocedural analysis case: recognizing sources
		Function *callee = aCallInst.getCalledFunction();
		string calleeName = callee->getName().str();
		unsigned arg = isTaintSource(calleeName);
		if ( -1 != arg ) {
			unsigned maxParams = aCallInst.getNumArgOperands();
			assert ( (arg < maxParams) && "Invalid argument position" );
			Value *taintedArg = aCallInst.getArgOperand(arg);

			//errs() << "Tainted arg: " << taintedArg->getName() << "\n";

			_OUT[taintedArg].insert(_OUT[&aCallInst].begin(), aCallInst);

			errs() << "Found a source " << calleeName << "\n";
		}
	}

	//errs() << "##aCallInst \n";

	//printOut(aCallInst);

}

void CTaintAnalysis::visitVAArgInst(VAArgInst & I)
{
}

static RegisterPass<CTaintAnalysis>
X("ctaintmod", "CTaint Module Pass",
		false /* Only looks at CFG */,
		true /* Analysis Pass */);

}
