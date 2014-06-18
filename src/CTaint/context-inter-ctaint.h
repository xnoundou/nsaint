/*
 * CTaintInterProcedural.h
 *
 *  Created on: 2013-11-10
 *      Author: noundou
 */

#ifndef CTAINTINTERPROCEDURAL_H_
#define CTAINTINTERPROCEDURAL_H_

#include "CForwardFlowAnalysis.h"
#include "CTaintAnalysis.h"
#include "intra-ctaint.h"

//#include <llvm/ADT/SCCIterator.h>

using namespace llvm;

namespace {
//class CTaintContextInterProcedural : public CTaintIntraProcedural {
class CTaintContextInterProcedural : public CForwardFlowAnalysis {

public:
	//CTaintContextInterProcedural(CTaintAnalysis *analysis);
	CTaintContextInterProcedural(CTaintIntraProcedural *intraAnalysis);
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
	virtual void initWorkList();

private:
	CTaintIntraProcedural *_intraAnalysis;
};
}

CTaintContextInterProcedural::CTaintContextInterProcedural(CTaintIntraProcedural *intraAnalysis)
	:CForwardFlowAnalysis(intraAnalysis->getTaintAnalysis().getAllProcsRTPOrder()),
	 _intraAnalysis(intraAnalysis)
{
}

inline bool CTaintContextInterProcedural::merge(BasicBlock *curBB, BasicBlock *succBB) {
	return _intraAnalysis->merge(curBB, succBB);
}

inline void CTaintContextInterProcedural::visitLoadInst(LoadInst &I) {
	_intraAnalysis->visitLoadInst(I);
}

inline void CTaintContextInterProcedural::visitStoreInst(StoreInst &I) {
	_intraAnalysis->visitStoreInst(I);
}

inline void CTaintContextInterProcedural::visitCallInst(CallInst &I) {
	_intraAnalysis->visitCallInst(I);
}

inline void CTaintContextInterProcedural::visitReturnInst(ReturnInst &I) {
	_intraAnalysis->visitReturnInst(I);
}

inline void CTaintContextInterProcedural::mergeCopyPredOutFlowToInFlow(Instruction &predInst, Instruction &curInst) {
	_intraAnalysis->mergeCopyPredOutFlowToInFlow(predInst, curInst);
}

//CTaintContextInterProcedural::CTaintContextInterProcedural(CTaintAnalysis *analysis)
//	:CTaintIntraProcedural(analysis)
//{
//}

void CTaintContextInterProcedural::doAnalysis()
{
	//CTaintIntraProcedural::doAnalysis();
	//_intraAnalysis->doAnalysis();

	errs() << "## Starting interprocedural analysis\n";
	//_analysis->setCtxInterRunning(true);
	_intraAnalysis->getTaintAnalysis().setCtxInterRunning(true);
	analyze();
	//_analysis->setCtxInterRunning(false);
	_intraAnalysis->getTaintAnalysis().setCtxInterRunning(false);
}

void CTaintContextInterProcedural::initWorkList() {
	_workList.clear();

	//Function *pointerMain = _analysis->getMainFunction();
	Function *pointerMain = _intraAnalysis->getTaintAnalysis().getMainFunction();

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
		//_allProcs = _analysis->getAllProcsRTPOrder();
		_allProcs = _intraAnalysis->getTaintAnalysis().getAllProcsRTPOrder();
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
