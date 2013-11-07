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
typedef map<Instruction *, set<Value*> >  FlowSet;
typedef map<Instruction *, set<Value*> >::iterator ItFlowSet;
typedef map<Instruction *, set<Value *> >::value_type ValTypeFlowSet;

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
	//FlowSet _OUT;
	set<Value*> _outFlow;

	void printOutFlow();
	void copyInFlowToOutFlow(Instruction &I);

	/**
	 * To access _IN values
	 */
	void getInFlow(Instruction &I, set<Value*> &inflow);

	void getFromFlowSet(FlowSet &aFlowSet, Instruction &I, set<Value*> &result);
	void addToFlowSet(FlowSet &aFlowSet, Instruction &aInst, Value *aValue);
	void addInFlow(Instruction &, Value *aValue);

	inline static void log(const string &msg) {
		errs() << _taintId << msg << '\n';
	}

	void initDataFlowSet(Function &f);

	void collectAliasInfo();
	Instruction * next(vector<Instruction *> &workList);
	bool smaller(set<Value *> &l, set<Value *> &r, set<Value *> &inOutDiff);
	void getSuccessors(Instruction *I, set<Instruction *> &succs);
	//void merge(set<Value *> &l, set<Value *> &r, set<Value *> &result);
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

inline Function * CTaintAnalysis::getFunction(Instruction &I){
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

void CTaintAnalysis::copyInFlowToOutFlow(Instruction &I) {
	_outFlow.clear();
	set<Value *> in;
	getInFlow(I, in);
	_outFlow.insert(in.begin(), in.end());
}

void CTaintAnalysis::getFromFlowSet(FlowSet &aFlowSet, Instruction &I, set<Value*> &result) {
	result.clear();
	ItFlowSet itIN = aFlowSet.find(&I);

	if (itIN != aFlowSet.end()) {
		set<Value*> setFound = itIN->second;
		result.insert( itIN->second.begin(), itIN->second.end() );
	}

}

void CTaintAnalysis::getInFlow(Instruction &I, set<Value*> &inflow) {
	return getFromFlowSet(_IN, I, inflow);
}

void CTaintAnalysis::addToFlowSet(FlowSet &aFlowSet, Instruction &aInst, Value *aValue) {
	ItFlowSet curValues = aFlowSet.find(&aInst);

	if (curValues != aFlowSet.end()) {
		set<Value *> taintedValues = curValues->second;
		taintedValues.insert(aValue);
	}
	else {
		set<Value *> taintedValues;
		taintedValues.insert(aValue);
		aFlowSet.insert( ValTypeFlowSet(&aInst, taintedValues) );
	}
}

void CTaintAnalysis::addInFlow(Instruction &aInst, Value *aValue) {
	addToFlowSet(_IN, aInst, aValue);
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
	for(ItFunction f = _signatureToFunc.begin(); f != _signatureToFunc.end(); ++f) {
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

	for(ItFunction itF = _signatureToFunc.begin(); itF != _signatureToFunc.end(); ++itF) {
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

Instruction * CTaintAnalysis::next(vector<Instruction *> &workList) {
	Instruction *result = workList.back();
	workList.pop_back();
	return result;
}

bool CTaintAnalysis::smaller(set<Value *> &l, set<Value *> &r, set<Value *> &inOutDiff) {
	inOutDiff.clear();

	std::set_difference(l.begin(), l.end(),
						r.begin(), r.end(),
						std::inserter(inOutDiff, inOutDiff.begin()) );

	return inOutDiff.empty();
}

void CTaintAnalysis::getSuccessors(Instruction *I, set<Instruction *> &succs) {
	if (I->isTerminator()) {
		TerminatorInst *T = cast<TerminatorInst> (I);
		unsigned succNr = T->getNumSuccessors();
		for(unsigned k = 0; k < succNr; ++k) {
			BasicBlock *succBB = T->getSuccessor(k);
			Instruction &succFirst = succBB->front();
			succs.insert(&succFirst);
		}
	}
	else {
		succs.insert(I->getNextNode());
	}
}

/*void CTaintAnalysis::merge(set<Value *> &outFlow, set<Value *> &inFlow, set<Value *> &result) {
	result.clear();
	std::set_union( l.begin(), l.end(),
					r.begin(), r.end(),
					inserter(result, result.begin() ));
}*/

void CTaintAnalysis::printOutFlow() {
	for( set<Value *>::iterator it = _outFlow.begin();
			it != _outFlow.end();
			++it)
	{
		errs() << "## a value in outflow" << "\n";
		(*it)->print(errs());
		errs() << "\n";
	}
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

	//Adds function instructions relevant for the alias analysis pass
	collectAliasInfo();

	_curAST->print(errs());

	vector<Instruction *> workList;
	for (inst_iterator I = inst_begin(_pointerMain), E = inst_end(_pointerMain); I != E; ++I)
		workList.insert(workList.begin(), &*I);

	Instruction *I = 0;

	while(!workList.empty()) {
		I = next(workList);
		visit(I);

		set<Instruction *> succs;
		getSuccessors(I, succs);

		errs() << "successor size: " << succs.size() << "\n";

		for(set<Instruction *>::iterator its = succs.begin();
				its != succs.end();
				++its )
		{
			Instruction &succFirst = *(*its);
			set<Value *> inFlowFirst;
			getInFlow(succFirst, inFlowFirst);
			set<Value *> inOutDiff;

			errs() << "next inst: \n";
			succFirst.print(errs());
			errs() << "\n";

			printOutFlow();

			if ( !smaller(_outFlow, inFlowFirst, inOutDiff) ) {

				errs() << "Changing inflow \n";

				//merge operation is a union.
				inFlowFirst.insert( inOutDiff.begin(), inOutDiff.end() );

				workList.insert(workList.begin(), &succFirst);
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

void CTaintAnalysis::initDataFlowSet(Function &f){
	//map<Instruction, pair<Value, vector<Instruction> > >
	for (inst_iterator inst = inst_begin(f), end = inst_end(f); inst != end; ++inst) {
		//IN[*inst] =
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

	Value *val = I.getValueOperand();

	if (val->getType()->isPointerTy()) {
		//COPY [p=q]
		set<Value*> inQ;
		getInFlow(I, inQ);
		if (!inQ.empty()) {
			_outFlow.insert(val);
			errs() << "Adding an outflow" << "\n";
		}
	}
	else {
		//STORE [*p=q]

		const ilist< AliasSet > &aliasSets = _curAST->getAliasSets();
		set<Value *> INsQ;
		getInFlow(I, INsQ);
		Value * p = I.getPointerOperand();
		Value *curPointer = 0;

		if ( !INsQ.empty() ) {
			for(ilist<const AliasSet>::iterator itSet = aliasSets.begin();
					itSet != aliasSets.end();
					++itSet)
			{
				if (itSet->aliasesPointer(p, 0, 0, *_aa)) {
					for(AliasSet::iterator it = itSet->begin(); it != itSet->end(); ++it) {
						curPointer = it->getValue();
						_outFlow.insert(curPointer);
						p->print(errs() << "gets tainted");
					}
					break;
				}
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
			_outFlow.insert(taintedArg);
		}
	}
}

void CTaintAnalysis::visitVAArgInst(VAArgInst & I)
{
}

static RegisterPass<CTaintAnalysis>
X("ctaintmod", "CTaint Module Pass",
		false /* Only looks at CFG */,
		true /* Analysis Pass */);

}
