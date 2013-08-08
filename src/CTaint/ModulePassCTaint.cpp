#include "ModulePassCTaint.h"

char CTaintModulePass::ID = 0;

bool CTaintModulePass::runOnModule(Module &M) {
  errs() << "[CTaint]: ";
  errs().write_escaped(M.getModuleIdentifier()) << "\n";
  return false;
}

static RegisterPass<CTaintModulePass>
X("ctaint", "CTaint World Module Pass",
   true /* Only looks at CFG */, 
   false /* Analysis Pass */ );
