#include "FunctionPassCTaint.h"

char CTaintFunctionPass::ID = 0;

bool CTaintFunctionPass::runOnFunction(Function &F) {
  errs() << "[CTaint]: ";
  errs().write_escaped(F.getName()) << "\n";
  return false;
}

static RegisterPass<CTaintFunctionPass>
X("ctaintproc", "CTaint Function Pass",
   true /* Only looks at CFG */, 
   false /* Analysis Pass */ );
