#include "FunctionPassCTaint.hpp"

char CTaintFunctionPass::ID = 0;

bool CTaintFunctionPass::runOnFunction(Function &F) {
  errs() << "[CTaint]: ";
  errs().write_escaped(F.getName()) << "\n";
  return false;
}

static RegisterPass<CTaintFunctionPass>
X("ctaint", "CTaint World Pass",
   true /* Only looks at CFG */, 
   false /* Analysis Pass */ );
