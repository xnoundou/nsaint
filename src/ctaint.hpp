#ifndef CTAINT_HPP
#define CTAINT_HPP

#include "llvm/Pass.h"
#include "llvm/Function.h"
#include "llvm/Support/raw_ostream.h"

using namespace llvm;

namespace {

struct CTaintFunctionPass : public FunctionPass {

  static char ID;

  CTaintFunctionPass() : FunctionPass(ID) {}

  virtual bool runOnFunction(Function &F);

};
}

#endif //CTAINT_HPP