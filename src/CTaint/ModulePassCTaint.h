#ifndef CTAINT_MODULEPASS_HPP
#define CTAINT_MODULEPASS_HPP

#include <llvm/Support/DataTypes.h>
#include <llvm/Support/raw_ostream.h>
#include <llvm/Pass.h>
#include <llvm/IR/Module.h>
#include <llvm/Analysis/CallGraph.h>
#include <llvm/Analysis/LoopInfo.h>

using namespace llvm;

namespace {

/*
 * Top level code of the interprocedural
 * analysis
 */

struct CTaintModulePass : public ModulePass {

  static char ID;

  CallGraphNode *cgRootNode;

  void init();

  CTaintModulePass() : ModulePass(ID) {}

  virtual bool runOnModule(Module &F);
  void getAnalysisUsage(AnalysisUsage &AU) const;

};
}

#endif //CTAINT_MODULEPASS_HPP
