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
typedef map<Instruction *, set<Value *> >  FlowSet;
typedef map<Instruction *, set<Value *> >::iterator ItFlowSet;
typedef map<Instruction *, set<Value *> >::value_type ValTypeFlowSet;

//typedef map<Value *, vector<Instruction &> >  ValueTaintingTable;
//typedef map<Value *, vector<Instruction &> >::iterator ItValueTaintingTable;
//typedef map<Value *, vector<Instruction &> >::value_type ValTypeValueTaintingTable;

typedef vector< pair<bool, string> > FunctionParam;

typedef struct {

	set<Value *>::iterator begin(){
		return _modified.begin();
	}

	set<Value *>::iterator end(){
		return _modified.end();
	}

	void addValue(Value *v){
		_modified.insert(v);
	}

	bool hasBeenModified(){
		return _modified.size() > 0;
	}

	void reset(){
		_modified.clear();
	}

private:
	set<Value *> _modified;

} OutputModifiedInfo;

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
	//ValueTaintingTable _valTaintInfo;

	OutputModifiedInfo _lastFlowInfo;

	void printIn(Instruction &I);
	void printOut(Instruction &I);
	void mergeCopyPredOutFlowToInFlow(Instruction &I);
	inline void insertToOutFlow(Instruction *I, Value *v);
	inline bool isValueTainted(Instruction *I, Value *v);
	void addPointsToSet(Instruction *I, Value *pointerVal);

	static void log(const string &msg);

	void initWorkList(vector<Instruction *> &workList);

	void collectAliasInfo();

	void getAllBeforeNextTerminator(Instruction *I, vector<Instruction *> &succs);
	void getSuccessors(Instruction *I, vector<Instruction *> &succs);

	void intraFlow(vector<Instruction *> &workList);
	void interFlow(Function *caller, Instruction &inst);
	Instruction * next(vector<Instruction *> &workList);
	inline void insert(vector<Instruction *> &workList, Instruction *I);
	inline void merge(Instruction *I);
};

char CTaintAnalysis::ID = 0;

const string CTaintAnalysis::_taintId("[STTAL]");

const string CTaintAnalysis::_taintSourceFile("cfg/sources.cfg");

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
		//intraFlow(workList);
	}
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

Instruction * CTaintAnalysis::next(vector<Instruction *> &workList) {
	Instruction *result = workList.back();
	workList.pop_back();
	return result;
}

inline void CTaintAnalysis::insert(vector<Instruction *> &workList, Instruction *I) {
	workList.insert(workList.begin(), I);
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

void CTaintAnalysis::initWorkList(vector<Instruction *> &workList){
	Function *F = 0;
	Instruction *I = 0;

	for(ItFunction itF = _signatureToFunc.begin(), itEnd = _signatureToFunc.end();
			itF != itEnd;
			++itF)
	{
		F = itF->second;

		for (inst_iterator it = inst_begin(*F), E = inst_end(*F); it != E; ++it) {
			I = &*it;

			//Initializing IN and OUT flow sets
			_OUT[I];
			_IN[I];
			insert(workList, I);
		}
	}

	errs() << " _OUT size: " << _OUT.size() << "\n";
	errs() << " _IN size: " << _IN.size() << "\n";
}

void CTaintAnalysis::intraFlow(vector<Instruction *> &workList) {
	if ( _intraFlag )
		return;

	errs() << "worklist size at begin: " << workList.size() << "\n";

	Instruction *curI = 0;
	Instruction *nextI = 0;

	while(!workList.empty()) {
		curI = next(workList);
		visit(*curI);

		//Has any _OUT value been modified ?
		if (_lastFlowInfo.hasBeenModified()) {
			vector<Instruction *> succs;
			getSuccessors(curI, succs);
			for(vector<Instruction *>::iterator its = succs.begin(), itEnd = succs.end();
					its != itEnd;
					++its )
			{
				nextI = *its;
				merge(nextI);
				insert(workList, nextI);
			}
		}
	}

	_intraFlag = true;
}

bool CTaintAnalysis::runOnModule(Module &m) {
	log("module identifier is " + m.getModuleIdentifier());

	_aa = &getAnalysis<AliasAnalysis>();

	assert (_aa && "Alias analysis was not instantiated (_aa is null)!");

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
	initWorkList(workList);

	errs() << "worklist size at begin: " << workList.size() << "\n";

	//Adds function instructions relevant for the alias analysis pass
	collectAliasInfo();

	_curAST->print(errs());

	intraFlow(workList);

	return false;
}



unsigned CTaintAnalysis::isTaintSource(string &funcName) {
	map<string, int>::iterator res;
	res = _taintSources.find(funcName);
	if (res != _taintSources.end())
		return res->second;

	return -1;
}

inline void CTaintAnalysis::merge(Instruction *I) {
	_IN[I].insert(_lastFlowInfo.begin(), _lastFlowInfo.end());
}

void CTaintAnalysis::mergeCopyPredOutFlowToInFlow(Instruction &I) {
	BasicBlock *BB = I.getParent();
	BasicBlock *aPred = 0;
	Instruction *pi;
	for (pred_iterator PI = pred_begin(BB), E = pred_end(BB); PI != E; ++PI) {
	  aPred = *PI;
	  pi = &aPred->back();

	  _IN[&I].insert(_OUT[pi].begin(), _OUT[pi].end());
	}

	_lastFlowInfo.reset();
}

inline void CTaintAnalysis::insertToOutFlow(Instruction *I, Value *v) {
	_OUT[I].insert(v);
	_lastFlowInfo.addValue(v);
}

inline bool CTaintAnalysis::isValueTainted(Instruction *I, Value *v) {
	return (!_IN[I].empty() && 0 == _IN[I].count(v));
}

void CTaintAnalysis::addPointsToSet(Instruction *I, Value *pointerVal) {
	AliasSet * as = _curAST->getAliasSetForPointerIfExists(pointerVal, 0, 0);
	if (as && as->isMayAlias()) {
		for(AliasSet::iterator it = as->begin(), itE = as->end(); it != itE; ++it) {
			insertToOutFlow(I, it->getValue());
			pointerVal->print(errs() << " gets tainted \n");
		}
	}
}

void CTaintAnalysis::visitLoadInst(LoadInst &I)
{
	mergeCopyPredOutFlowToInFlow(I);
}

void CTaintAnalysis::visitStoreInst(StoreInst &I)
{
	mergeCopyPredOutFlowToInFlow(I);

	Value *q = I.getValueOperand();

	if (!isValueTainted(&I, q))
		return;

	if (q->getType()->isPointerTy()) {
		//COPY [p=q]
		errs() << "COPY [p=q]\n";

		Value * p = I.getPointerOperand();
		insertToOutFlow(&I, q);
		p->print(errs() << "\n gets tainted\n");
		addPointsToSet(&I, q);
	}
	else {
		//STORE [*p=q]
		errs() << "STORE [*p=q]\n";

		//TODO: FIx this code to get top levels variables
		const ilist< AliasSet > &aliasSets = _curAST->getAliasSets();

		Value * p = I.getPointerOperand();
		Value *curPointer = 0;
		for(ilist<const AliasSet>::iterator itSet = aliasSets.begin(), itEnd = aliasSets.end();
				itSet != itEnd;
				++itSet)
		{
			if (itSet->aliasesPointer(p, 0, 0, *_aa)) {

				for(AliasSet::iterator it = itSet->begin(), itEnd = itSet->end(); it != itEnd; ++it) {
					curPointer = it->getValue();
					assert(curPointer && "A null pointer in the alias set!");
					insertToOutFlow(&I, curPointer);
					p->print(errs() << "\n gets tainted\n");
				}
				break;
			}
			else
				errs() << "No alias matching for " << p->getName() << "\n";
		}
	}
}

void CTaintAnalysis::visitGetElementPtrInst(GetElementPtrInst &I)
{
	mergeCopyPredOutFlowToInFlow(I);
}

/*
 * Interprocedural analysis
 */
void CTaintAnalysis::visitCallInst(CallInst & aCallInst)
{
	mergeCopyPredOutFlowToInFlow(aCallInst);

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
			insertToOutFlow(&aCallInst, taintedArg);

			errs() << "Found a source " << calleeName << "\n";
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
