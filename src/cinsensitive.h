/*
 * cinsensitive.h
 *
 *  Context Insensitive Analysis
 *
 *  Created on: 2013-12-23
 *  Author: Xavier N. Noumbissi
 */

#ifndef CINSENSITIVE_H_
#define CINSENSITIVE_H_

#include "csensitive.h"
#include "ctaintanalysis.h"

using namespace llvm;

namespace {
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
	virtual void visitCastInst(CastInst &I);
	virtual void visitBinaryOperator(BinaryOperator &I);
	virtual void visitVACopyInst(VACopyInst &I);

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

inline void InterProcedural::visitCastInst(CastInst &I) {
	_intraAnalysis->visitCastInst(I);
}

inline void InterProcedural::visitBinaryOperator(BinaryOperator &I) {
	_intraAnalysis->visitBinaryOperator(I);
}

inline void InterProcedural::visitVACopyInst(VACopyInst &I) {
	_intraAnalysis->visitVACopyInst(I);
}

inline void InterProcedural::mergeCopyPredOutFlowToInFlow(Instruction &predInst, Instruction &curInst) {
	_intraAnalysis->mergeCopyPredOutFlowToInFlow(predInst, curInst);
}

void InterProcedural::doAnalysis()
{
	errs() << "## Starting context-insensitive interprocedural analysis\n";
	_intraAnalysis->getTaintAnalysis().setInterRunning(true);
	analyze();
	_intraAnalysis->getTaintAnalysis().setInterRunning(false);
}

#endif /* CINSENSITIVE_H_ */
