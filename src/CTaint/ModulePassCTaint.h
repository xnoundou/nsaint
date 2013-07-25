#ifndef CTAINT_MODULEPASS_HPP
#define CTAINT_MODULEPASS_HPP

#include <llvm/Support/DataTypes.h>
#include <llvm/Support/raw_ostream.h>
#include <llvm/Pass.h>
#include <llvm/IR/Module.h>

using namespace llvm;

namespace {

struct CTaintModulePass : public ModulePass {

  static char ID;

  CTaintModulePass() : ModulePass(ID) {}

  virtual bool runOnModule(Module &F);

};
}

#endif //CTAINT_MODULEPASS_HPP
