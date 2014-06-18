/*
 * CTaintIntraProcedural.h
 *
 *  Created on: 2013-11-10
 *      Author: noundou
 */

#ifndef CTAINTINTRAPROCEDURAL_H_
#define CTAINTINTRAPROCEDURAL_H_

#include "CForwardFlowAnalysis.h"
#include "CTaintAnalysis.h"

namespace {
class CTaintIntraProcedural : public CForwardFlowAnalysis {

public:
	CTaintIntraProcedural(CTaintAnalysis *analysis);

	void doAnalysis();
	CTaintAnalysis &getTaintAnalysis();

	//******* Implementation of methods inherited from CDataFlow *******//
	virtual bool merge(BasicBlock *curBB, BasicBlock *succBB);
	virtual void mergeCopyPredOutFlowToInFlow(Instruction &predInst, Instruction &curInst);

	//******* Implementation of visit methods *******//
	virtual void visitLoadInst(LoadInst &I);
	virtual void visitStoreInst(StoreInst &I);
	virtual void visitCallInst(CallInst &I);
	virtual void visitReturnInst(ReturnInst &I);

protected:
	CTaintAnalysis *_analysis;

	void handleFormals();
};
}


CTaintIntraProcedural::CTaintIntraProcedural(CTaintAnalysis *analysis)
	:CForwardFlowAnalysis(analysis->getAllProcsRTPOrder()),
	 _analysis(analysis)
{
}

inline CTaintAnalysis &CTaintIntraProcedural::getTaintAnalysis()
{
	return *_analysis;
}

void CTaintIntraProcedural::doAnalysis() {
	errs() << "## Starting intraprocedural analysis\n";
	analyze();
	handleFormals();
	_analysis->setIntraWasRun(true);
}

inline bool CTaintIntraProcedural::merge(BasicBlock *curBB, BasicBlock *succBB) {
	return _analysis->merge(curBB, succBB);
}

inline void CTaintIntraProcedural::visitLoadInst(LoadInst &I) {
	_analysis->visitLoadInst(I);
}

inline void CTaintIntraProcedural::visitStoreInst(StoreInst &I) {
	_analysis->visitStoreInst(I);
}

inline void CTaintIntraProcedural::visitCallInst(CallInst &I) {
	_analysis->visitCallInst(I);
}

inline void CTaintIntraProcedural::visitReturnInst(ReturnInst &I) {
	_analysis->visitReturnInst(I);
}

inline void CTaintIntraProcedural::mergeCopyPredOutFlowToInFlow(Instruction &predInst, Instruction &curInst) {
	_analysis->mergeCopyPredOutFlowToInFlow(predInst, curInst);
}

void CTaintIntraProcedural::handleFormals() {
	Function *F = 0;
	Value *aUse = 0;

	for(vector<Function *>::iterator pf = _allProcs->begin(), Epf = _allProcs->end(); pf != Epf; ++pf) {
		F = *pf;
		Instruction &I = F->back().back();

		for(Function::arg_iterator pa = F->arg_begin(), Epa = F->arg_end(); pa != Epa; ++pa) {
			Argument &aFormal = *pa;

			DEBUG_WITH_TYPE("waint-summary", errs() << "Analyzing formal parameter "
								<< aFormal.getName() << " of function " << F->getName() << "\n");

			//Check if any use of the formal parameter is tainted
			for(Value::use_iterator pu = aFormal.use_begin(), Epu = aFormal.use_end(); pu!=Epu; ++pu) {
				aUse = *pu;
				if (_analysis->isValueTainted(&I, aUse)) {
					DEBUG_WITH_TYPE("waint-summary", errs() << "\tis tainted from: ";
									aUse->print(errs()); errs() << "\n");
					_analysis->setProcArgTaint(F, aFormal.getArgNo(), true);
				}
			}
		}
	}
}

#endif /* CTAINTINTRAPROCEDURAL_H_ */
