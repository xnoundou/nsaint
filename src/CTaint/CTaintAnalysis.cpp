#include <llvm/Pass.h>
#include <llvm/IR/Module.h>
#include <llvm/Analysis/LoopInfo.h>
#include <llvm/Support/InstIterator.h>

#include "CTaintUtil.h"

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

struct CTaintAnalysis : public ModulePass {
	static char ID;

	CTaintAnalysis();
	void getAnalysisUsage(AnalysisUsage & AU) const;
	virtual bool runOnModule(Module & F);

private:
	static const string _passId;

	//Pointer to the 'main' function
	Function *_pointerMain;

	//Pointer the 'main' function's first instruction
	Instruction *_firstInstMain;

	inline static void log(const string &msg) {
		CTaintUtil::log( _passId + msg );
	}

	void initDataFlowSet(Function &f);
	void analyze();
	void interFlow(Function *caller, Instruction &inst);
};

const string CTaintAnalysis::_passId("[Module] ");

char CTaintAnalysis::ID = 0;


CTaintAnalysis::CTaintAnalysis() : ModulePass(ID) {
	_pointerMain = 0;
	_firstInstMain = 0;
}

void CTaintAnalysis::getAnalysisUsage(AnalysisUsage &AU) const {
	AU.setPreservesAll();
	AU.addRequired<LoopInfo > ();
	AU.addRequired<CallGraph > ();
}

void CTaintAnalysis::interFlow(Function *caller, Instruction &inst) {

}

void CTaintAnalysis::analyze() {

	if ( !_firstInstMain ) {
		log("[analyze] The first instruction of the main method is not set! Aborting ...");
		return ;
	}

	vector<Instruction *> workList;
	workList.push_back(_firstInstMain);

	Instruction *nextInst = 0;
	while(!workList.empty()) {
		nextInst = workList.front();
		interFlow(0, *nextInst);
		//for() {
		//Instruction *i = 0;
		//bool outputIncreased = std::includes(OUT[i].begin(), OUT[i].end(),
		//								IN[i].begin(), IN[i].end());
		//if (OUT[i])
		//}
	}

}

bool CTaintAnalysis::runOnModule(Module &M) {
	log("module identifier is " + M.getModuleIdentifier());

	for (Module::iterator b = M.begin(), be = M.end(); b != be; ++b) {

		Function *f = dyn_cast<Function > (b);
		string fName = f->getName().str();
		log("discovered function " + fName);

		//TODO: use function signature as key instead
		_signatureToFunc[fName] = f;

		if ( !_pointerMain && 0 == fName.compare(ENTRY_POINT) ) {
			_pointerMain = f;
			_firstInstMain = &*inst_begin(_pointerMain);

			//errs() << " fName: " << fName << "\n";
			//errs() << " first inst of main: " << *_firstInstMain << "\n";
		}
	}

	analyze();

	return false;
}

void CTaintAnalysis::initDataFlowSet(Function &f){
	//map<Instruction, pair<Var, vector<Instruction> > >
	for (inst_iterator inst = inst_begin(f), end = inst_end(f); inst != end; ++inst) {
		//IN[*inst] =
	}
}

static RegisterPass<CTaintAnalysis>
X("ctaintmod", "CTaint Module Pass",
		false /* Only looks at CFG */,
		true /* Analysis Pass */);

}
