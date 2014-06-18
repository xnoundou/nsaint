/*
 * int-ctaint.h
 *
 *  Created on: 2013-12-23
 *      Author: noundou
 */

#ifndef INT_CTAINT_H_
#define INT_CTAINT_H_

#include "context-inter-ctaint.h"
#include "CTaintAnalysis.h"

using namespace llvm;

namespace {
//class InterProcedural : public CTaintContextInterProcedural {
class InterProcedural : public CForwardFlowAnalysis {

public:
	InterProcedural(CTaintIntraProcedural *intraAnalysis);
	void doAnalysis();

	//******* Implementation of methods inherited from CDataFlow *******//
	virtual bool merge(BasicBlock *curBB, BasicBlock *succBB);
	virtual void mergeCopyPredOutFlowToInFlow(Instruction &predInst, Instruction &curInst);

	//******* Implementation of visit methods *******//
	virtual void visitLoadInst(LoadInst &I);
	virtual void visitStoreInst(StoreInst &I);
	virtual void visitCallInst(CallInst &I);
	virtual void visitReturnInst(ReturnInst &I);

protected:
	CTaintIntraProcedural *_intraAnalysis;
private:
};
}

InterProcedural::InterProcedural(CTaintIntraProcedural *intraAnalysis)
	:CForwardFlowAnalysis(intraAnalysis->getTaintAnalysis().getAllProcsTPOrder()),
	 _intraAnalysis(intraAnalysis)
{
}

inline bool InterProcedural::merge(BasicBlock *curBB, BasicBlock *succBB) {
	return _intraAnalysis->merge(curBB, succBB);
}

inline void InterProcedural::visitLoadInst(LoadInst &I) {
	_intraAnalysis->visitLoadInst(I);
}

inline void InterProcedural::visitStoreInst(StoreInst &I) {
	_intraAnalysis->visitStoreInst(I);
}

inline void InterProcedural::visitCallInst(CallInst &I) {
	_intraAnalysis->visitCallInst(I);
}

inline void InterProcedural::visitReturnInst(ReturnInst &I) {
	_intraAnalysis->visitReturnInst(I);
}

inline void InterProcedural::mergeCopyPredOutFlowToInFlow(Instruction &predInst, Instruction &curInst) {
	_intraAnalysis->mergeCopyPredOutFlowToInFlow(predInst, curInst);
}

void InterProcedural::doAnalysis()
{
	//CTaintContextInterProcedural::doAnalysis();

	errs() << "## Starting context-insensitive interprocedural analysis\n";
	//_analysis->setInterRunning(true);
	_intraAnalysis->getTaintAnalysis().setInterRunning(true);
	analyze();
	//_analysis->printSummaryTable();
	//_analysis->setInterRunning(false);
	_intraAnalysis->getTaintAnalysis().setInterRunning(false);
}

#endif /* INT_CTAINT_H_ */
