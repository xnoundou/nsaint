#include <llvm/Pass.h>
#include <llvm/IR/Module.h>
#include <llvm/Analysis/LoopInfo.h>
#include <llvm/Support/InstIterator.h>
#include <llvm/IR/Instruction.h>
#include <llvm/Analysis/CallGraph.h>
#include <llvm/Analysis/AliasAnalysis.h>
#include <llvm/Analysis/AliasSetTracker.h>
#include <llvm/InstVisitor.h>
#include <llvm/Target/Mangler.h>

#include <fstream>

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

	/**
	 * Only executed during interprodural analysis
	 */
	void visitCallInst(CallInst &I);

private:
	const static string _taintId;
	const static string _taintSourceFile;
	static vector<string> _taintSources;

	void readTaintSourceConfig();

	inline Function * getFunction(Instruction &I){
		return I.getParent()->getParent();
	}

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

	/**
	 * To access _IN values
	 */
	set<Value*> * getInFlow(Instruction *);

	/**
	 * To access _OUT values
	 */
	set<Value*> * getOutFlow(Instruction *);
	set<Value*> * getFromFlowSet(FlowSet &aFlowSet, Instruction *I);
	void addToFlowSet(FlowSet &aFlowSet, Instruction *aInst, Value *aValue);
	void addInFlow(Instruction *, Value *aValue);
	void addOutFlow(Instruction *, Value *aValue);

	inline static void log(const string &msg) {
		errs() << _taintId << msg << '\n';
	}

	void initDataFlowSet(Function &f);

	void collectAliasInfo();
	void intraFlow();
	void interFlow(Function *caller, Instruction &inst);
};

const string CTaintAnalysis::_taintId("[STTAL]");

const string CTaintAnalysis::_taintSourceFile("cfg/sources.cfg");

vector<string> CTaintAnalysis::_taintSources;

void CTaintAnalysis::readTaintSourceConfig() {
	//Open the file with taint source functions listed
	std::ifstream srcFile(_taintSourceFile.c_str());
	string aSource;

	//TODO: use the mangler here Mangler aMangler

	while (!srcFile.eof()) {
		std::getline(srcFile, aSource);
		if (!aSource.empty()) {
			_taintSources.push_back("__isoc99_"+aSource);
			log("read taint source: " + aSource);
		}
	}

	srcFile.close();
}

char CTaintAnalysis::ID = 0;


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

set<Value*> * CTaintAnalysis::getFromFlowSet(FlowSet &aFlowSet, Instruction *I) {
	ItFlowSet itIN = aFlowSet.find(I);

	if (itIN != aFlowSet.end())
		return &itIN->second;

	return 0;
}

set<Value*> * CTaintAnalysis::getInFlow(Instruction *I) {
	return getFromFlowSet(_IN, I);
}

set<Value*> * CTaintAnalysis::getOutFlow(Instruction *I) {
	return getFromFlowSet(_OUT, I);
}

void CTaintAnalysis::addToFlowSet(FlowSet &aFlowSet, Instruction *aInst, Value *aValue) {
	ItFlowSet curValues = aFlowSet.find(aInst);

	if (curValues != aFlowSet.end()) {
		set<Value *> taintedValues = curValues->second;
		taintedValues.insert(aValue);
	}
	else {
		set<Value *> taintedValues;
		taintedValues.insert(aValue);
		aFlowSet.insert( ValTypeFlowSet(aInst, taintedValues) );
	}
}

void CTaintAnalysis::addInFlow(Instruction *aInst, Value *aValue) {
	addToFlowSet(_IN, aInst, aValue);
}

void CTaintAnalysis::addOutFlow(Instruction *aInst, Value *aValue) {
	addToFlowSet(_OUT, aInst, aValue);
}

void CTaintAnalysis::collectAliasInfo() {
	if ( _aliasFlag )
		return;

	Function *F = 0;
	for(ItFunction itF = _signatureToFunc.begin(); itF != _signatureToFunc.end(); ++itF) {
		F = itF->second;
		AliasSetTracker *functionAST = new AliasSetTracker(*_aa);
		_functionToAliasSetMap[F] = functionAST;
		for (inst_iterator I = inst_begin(*F), E = inst_end(*F); I != E; ++I) {
			functionAST->add(&*I);
		}
		_curAST->add(*functionAST);
	}

	_aliasFlag = true;
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

void CTaintAnalysis::interFlow(Function *caller, Instruction &inst) {
	if (!_intraFlag) {
		intraFlow();
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

		string fName = f->getName().str();
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

	//Performing intraprocedural analysis at this point
	intraFlow();

	return false;
}

void CTaintAnalysis::initDataFlowSet(Function &f){
	//map<Instruction, pair<Value, vector<Instruction> > >
	for (inst_iterator inst = inst_begin(f), end = inst_end(f); inst != end; ++inst) {
		//IN[*inst] =
	}
}

void CTaintAnalysis::visitLoadInst(LoadInst &I)
{
	errs() << "a load inst" << "\n";
	I.print(errs());
	errs() << "\n";
}

void CTaintAnalysis::visitStoreInst(StoreInst &I)
{
	Value *val = I.getValueOperand();

	if (val->getType()->isPointerTy()) {
		//COPY [p=q]
		set<Value*> * inQ = getInFlow(&I);
		if (inQ && !inQ->empty()) {
			addOutFlow(&I, val);
			errs() << "Adding an outflow" << "\n";
		}
	}
	else {
		//STORE [*p=q]
		//Value * q = I.getValueOperand();
		Value * p = I.getPointerOperand();
		//AliasSet *qAliasSet = _curAST->getAliasSetForPointerIfExists(q, 0, 0);
		//AliasSet *pAliasSet = _curAST->getAliasSetForPointerIfExists(p,0,0);
		const ilist< AliasSet > &aliasSets = _curAST->getAliasSets();
		set<Value *> *INsQ = getInFlow(&I);
		if ( INsQ && !INsQ->empty() ) {
			for(ilist<const AliasSet>::iterator itSet = aliasSets.begin();
					itSet != aliasSets.end();
					++itSet)
			{
				if (itSet->aliasesPointer(p, 0, 0, *_aa)) {
					for(AliasSet::iterator it = itSet->begin(); it != itSet->end(); ++it) {
						Value *curPointer = it->getValue();
						addOutFlow(&I, curPointer);
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
}

/*
 * Interprocedural analysis
 */
void CTaintAnalysis::visitCallInst(CallInst & aCallInst)
{
	if (_intraFlag) {

	}
	else {
		//Intraprocedural analysis case: recognizing sources
		Function *callee = aCallInst.getCalledFunction();
		string calleeName = callee->getName().str();
		vector<string>::iterator result = std::find(_taintSources.begin(), _taintSources.end(), calleeName);
		if (result != _taintSources.end()) {

			log("found a taint source: " + calleeName);
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
