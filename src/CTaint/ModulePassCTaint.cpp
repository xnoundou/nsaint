#include "ModulePassCTaint.h"

char CTaintModulePass::ID = 0;

void CTaintModulePass::getAnalysisUsage(AnalysisUsage &AU) const {
  //CTaintModulePass.getAnalysisUsage(AU);
  AU.setPreservesAll();
  AU.addRequired<LoopInfo>();
  AU.addRequired<CallGraph>();
}

void CTaintModulePass::init() {
  cgRootNode = getAnalysis<CallGraph>().getRoot();
}

bool CTaintModulePass::runOnModule(Module &M) {
  errs() << "[CTaint]: ";
  errs().write_escaped(M.getModuleIdentifier()) << "\n";

  for(CallGraphNode::iterator b = cgRootNode->begin();
      b != cgRootNode->end();
      ++b) 
  {
    //b->second->print(errs());    
    //errs() << "[CTaint]: a callgraph node \n";
   // << b->second->getFunction()->getReturnType()->getTypeID() << "\n";
    //b->second->dump();
  } 

  return false;
}

static RegisterPass<CTaintModulePass>
X("ctaintmod", "CTaint Module Pass",
   false /* Only looks at CFG */,
   true /* Analysis Pass */ );
