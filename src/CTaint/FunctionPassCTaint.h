#ifndef CTAINT_FUNCTIONPASS_HPP
#define CTAINT_FUNCTIONPASS_HPP

#include <llvm/Support/DataTypes.h>
#include <llvm/Support/raw_ostream.h>
#include <llvm/Pass.h>
#include <llvm/IR/Function.h>

using namespace llvm;

namespace {

struct CTaintFunctionPass : public FunctionPass {

  static char ID;

  CTaintFunctionPass() : FunctionPass(ID) {}

  virtual bool runOnFunction(Function &F);

};
}

#endif //CTAINT_FUNCTIONPASS_HPP
