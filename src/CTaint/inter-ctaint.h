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

namespace {
class CTaintInterProcedural : public CTaintIntraProcedural {

public:
	CTaintInterProcedural(CTaintAnalysis *analysis);

	virtual void initWorkList();

	//******* Implementation of visit methods *******//
	virtual void visitCallInst(CallInst &I);
private:
};
}

CTaintInterProcedural::CTaintInterProcedural(CTaintAnalysis *analysis)
	:CTaintIntraProcedural(analysis)
{
  errs() << "## Starting interprocedural analysis\n";
  analyze();
}

void CTaintInterProcedural::initWorkList() {
  _workList.clear();
  Function *pointerMain = _analysis->getMainFunction();
  if (!pointerMain)
    return;
	BasicBlock *BB = 0;

		for (Function::iterator it = pointerMain->begin(), e = pointerMain->end(); it != e; ++it) {
			BB = &*it;
			insert(BB);
		}
	//errs() << " _workList size: " << _workList.size() << "\n";
}

void CTaintInterProcedural::visitCallInst(CallInst &I) {
  Function *caller = I.getParent()->getParent();
  Function *callee = I.getCalledFunction();
  //void (* visitFunction)(Function &) = this->visitFunction;

  _analysis->visitCallInstInter(I, caller, callee);
}

#endif /* CTAINTINTERPROCEDURAL_H_ */
