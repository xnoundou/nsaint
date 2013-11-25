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

	//******* Implementation of visit methods *******//
	virtual void visitCallInst(CallInst &I);
private:
};
}

CTaintInterProcedural::CTaintInterProcedural(CTaintAnalysis *analysis)
	:CTaintIntraProcedural(analysis)
{
	analyze();
}

inline void CTaintInterProcedural::visitCallInst(CallInst &I) {
  Function *caller = I.getParent()->getParent();
  Function *callee = I.getCalledFunction();
  //void (* visitFunction)(Function &) = this->visitFunction;

  _analysis->visitCallInstInter(I, caller, callee);
}

#endif /* CTAINTINTERPROCEDURAL_H_ */
