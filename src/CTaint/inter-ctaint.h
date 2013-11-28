/*
 * CTaintInterProcedural.h
 *
 *  Created on: 2013-11-10
 *      Author: noundou
 */

#ifndef CTAINTINTERPROCEDURAL_H_
#define CTAINTINTERPROCEDURAL_H_

#include "intra-ctaint.h"
#include "CTaintAnalysis.h"

//#include <llvm/ADT/SCCIterator.h>

using namespace llvm;

namespace {
class CTaintInterProcedural : public CTaintIntraProcedural {

public:
	CTaintInterProcedural(CTaintAnalysis *analysis);

protected:
	virtual void initWorkList();

	//******* Implementation of visit methods *******//
	//virtual void visitCallInst(CallInst &I);
private:
};
}

CTaintInterProcedural::CTaintInterProcedural(CTaintAnalysis *analysis)
	:CTaintIntraProcedural(analysis)
{
  errs() << "## Starting interprocedural analysis\n";
  _analysis->setCtxInterRunning(true);
  analyze();
  _analysis->setCtxInterRunning(false);
}

void CTaintInterProcedural::initWorkList() {
	_workList.clear();

	Function *pointerMain = _analysis->getMainFunction();

	if (pointerMain) {
		if (!pointerMain)
			return;
		BasicBlock *BB = 0;

		for (Function::iterator it = pointerMain->begin(), e = pointerMain->end(); it != e; ++it) {
			BB = &*it;
			insert(BB);
		}
	}
	else {
		errs() << "No main function exists\n";
		//Let us analyze methods using the topological order of the callgraph
		_allProcs = _analysis->getAllProcsRTPOrder();
		Function *F = 0;
		BasicBlock *BB = 0;

		for(unsigned k = 0; k < _allProcs->size(); ++k) {
			F = (*_allProcs)[k];
			for (Function::iterator it = F->begin(), e = F->end(); it != e; ++it) {
				BB = &*it;
				insert(BB);
			}
		}
	}
}

#endif /* CTAINTINTERPROCEDURAL_H_ */
