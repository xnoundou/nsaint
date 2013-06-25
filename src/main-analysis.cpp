#include "main-analysis.hpp"

char CTaintFunctionPass::ID = 0;

bool CTaintFunctionPass::runOnFunction(Function &F) {
  errs() << "[CTaint]: ";
  errs().write_escaped(F.getName()) << "\n";
  return false;
}

static RegisterPass<CTaintFunctionPass>
X("hello", "Hello World Pass", false, false);
