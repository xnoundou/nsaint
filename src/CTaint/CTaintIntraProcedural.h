/*
 * CTaintIntraProcedural.h
 *
 *  Created on: 2013-11-10
 *      Author: noundou
 */

#ifndef CTAINTINTRAPROCEDURAL_H_
#define CTAINTINTRAPROCEDURAL_H_

#include "CDataFlow.h"
#include "CTaintAnalysis.h"

namespace {
class CTaintIntraProcedural : public CDataFlow {

public:
	CTaintIntraProcedural(CTaintAnalysis *analysis);

	//******* Implementation of methods inherited from CDataFlow *******//
	inline void initWorkList(vector<Instruction *> &workList);
	inline virtual void merge(Instruction *curInst, Instruction *nextInst);
	virtual bool outFlowHasBeenModified();

	//******* Implementation of visit methods *******//
	void visitLoadInst(LoadInst &I);
	void visitStoreInst(StoreInst &I);
	void visitCallInst(CallInst &I);
	void visitAllocaInst(AllocaInst &I);

private:
	CTaintAnalysis *_analysis;
};
}

CTaintIntraProcedural::CTaintIntraProcedural(CTaintAnalysis *analysis){
	_analysis = analysis;
}

inline void CTaintIntraProcedural::initWorkList(vector<Instruction *> &workList) {
	_analysis->initWorkList(workList);
}

inline void CTaintIntraProcedural::merge(Instruction *curInst, Instruction *nextInst) {
	_analysis->merge(nextInst);
}

bool CTaintIntraProcedural::outFlowHasBeenModified() {
	return _analysis->outFlowHasBeenModified();
}

void CTaintIntraProcedural::visitLoadInst(LoadInst &I) {
	_analysis->visitLoadInst(I);
}

void CTaintIntraProcedural::visitStoreInst(StoreInst &I) {
	_analysis->visitStoreInst(I);
}

void CTaintIntraProcedural::visitCallInst(CallInst &I) {
	_analysis->visitCallInst(I);
}

void CTaintIntraProcedural::visitAllocaInst(AllocaInst &I) {
	_analysis->visitAllocaInst(I);
}

#endif /* CTAINTINTRAPROCEDURAL_H_ */
