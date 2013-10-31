#include <llvm/Pass.h>
#include <llvm/IR/Module.h>
#include <llvm/Analysis/LoopInfo.h>
#include <llvm/Support/InstIterator.h>

#include <llvm/InstVisitor.h>

#include "CTaintUtil.h"
#include "Intraprocedural.h"

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
typedef string Var;
typedef map<Instruction *, set<Var> >  FlowSet;

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

	/**
	 * Only executed during interprodural analysis
	 */
	void visitCallInst(CallInst &I);

private:
	static const string _passId;

	/** Has the intraprocedural analysis been run */
	bool _intraFlag;

	/** Has the interprocedural Context-Insenstive analysis been run */
	bool _interFlag;

	/** Has the interprocedural Context-Senstive analysis been run */
	bool _interContextSensitiveFlag;

	/** Pointer to the 'main' function */
	Function *_pointerMain;

	/** Pointer the 'main' function's first instruction */
	Instruction *_firstInstMain;

	CallGraphNode *_cgRootNode;

	/**
	 * Map from program funtion signatures as string to
	 * Function pointers
	 */
	map<string, Function*> _signatureToFunc;

	/**
	 * Summary table where we store function parameters and
	 * return value taunt information
	 */
	map<string, FunctionParam> _summaryTable;

	FlowSet _IN;
	FlowSet _OUT;


	inline static void log(const string &msg) {
		CTaintUtil::log( _passId + msg );
	}

	void initDataFlowSet(Function &f);

	void intraFlow();
	void interFlow(Function *caller, Instruction &inst);
};

const string CTaintAnalysis::_passId("[Module] ");

char CTaintAnalysis::ID = 0;


CTaintAnalysis::CTaintAnalysis() : ModulePass(ID) {
	_pointerMain = 0;
	_firstInstMain = 0;
	_intraFlag = false;
	_interFlag = false;
	_interContextSensitiveFlag = false;

}

void CTaintAnalysis::getAnalysisUsage(AnalysisUsage &AU) const {
	AU.setPreservesAll();
	AU.addRequired<LoopInfo > ();
	AU.addRequired<CallGraph > ();
}

void CTaintAnalysis:: intraFlow() {
	if ( _intraFlag )
		return;



	_intraFlag = true;
}

void CTaintAnalysis::interFlow(Function *caller, Instruction &inst) {

}

bool CTaintAnalysis::runOnModule(Module &m) {
	log("module identifier is " + m.getModuleIdentifier());

	for (Module::iterator b = m.begin(), be = m.end(); b != be; ++b) {

		Function *f = dyn_cast<Function > (b);

		//We only handle function defined in the code
		if (f->isDeclaration())
			continue;

		string fName = f->getName().str();
		log("discovered function " + fName);

		//TODO: use function signature as key instead
		_signatureToFunc[fName] = f;

		if ( !_pointerMain && 0 == fName.compare(ENTRY_POINT) ) {
			_pointerMain = f;
			_firstInstMain = &*inst_begin(_pointerMain);
		}

		//Performs intraprocedural analysis at this point
		visit(f);
	}

	return false;
}

void CTaintAnalysis::initDataFlowSet(Function &f){
	//map<Instruction, pair<Var, vector<Instruction> > >
	for (inst_iterator inst = inst_begin(f), end = inst_end(f); inst != end; ++inst) {
		//IN[*inst] =
	}
}

void CTaintAnalysis::visitLoadInst(LoadInst &inst)
{
	errs() << "a load inst" << "\n";
	inst.print(errs());
	errs() << "\n";
}

void CTaintAnalysis::visitStoreInst(StoreInst &I)
{

}

void CTaintAnalysis::visitGetElementPtrInst(GetElementPtrInst &I)
{

}

/*
 * Interprocedural analysis
 */
void CTaintAnalysis::visitCallInst(CallInst &I)
{

}

static RegisterPass<CTaintAnalysis>
X("ctaintmod", "CTaint Module Pass",
		false /* Only looks at CFG */,
		true /* Analysis Pass */);

}
