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

	//******* Implementation of methods inherited from CDataFlow *******//
	inline virtual bool merge(BasicBlock *curBB, BasicBlock *succBB);
	virtual void mergeCopyPredOutFlowToInFlow(Instruction &predInst, Instruction &curInst);

	//******* Implementation of visit methods *******//
	virtual void visitStoreInst(StoreInst &I);
	virtual void visitCallInst(CallInst &I);
	virtual void visitReturnInst(ReturnInst &I);

private:
	CTaintAnalysis *_analysis;

	void handleFormals();
};
}


CTaintIntraProcedural::CTaintIntraProcedural(CTaintAnalysis *analysis)
	:CForwardFlowAnalysis(analysis->getAllProcs()),
	 _analysis(analysis)
{
	analyze();
	handleFormals();
}

inline bool CTaintIntraProcedural::merge(BasicBlock *curBB, BasicBlock *succBB) {
	return _analysis->merge(curBB, succBB);
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

	for(vector<Function *>::iterator pf = _allProcs->begin(), Epf = _allProcs->end();
			pf != Epf; ++pf) {
		F = *pf;
		Instruction &I = F->back().back();
		//ReturnInst *retInst = dyn_cast<ReturnInst>(&I);
		//errs() << "## What? "; I.print(errs()); errs() << "\n";
		//assert(retInst && "Expecting a return instruction here!");

		for(Function::arg_iterator pa = F->arg_begin(), Epa = F->arg_end(); pa != Epa; ++pa) {
			Argument &A = *pa;

			errs() << "Analyzing formal parameter " << A.getName()
						   << " of function " << F->getName() << "\n";

			//Check if any use of the formal parameter is tainted
			for(Value::use_iterator pu = A.use_begin(), Epu = A.use_end(); pu!=Epu; ++pu) {
				aUse = *pu;
				//TODO: Check this is valid in the case I is not the return instruction
				//if (_analysis->isValueTainted(retInst, aUse)) {
				if (_analysis->isValueTainted(&I, aUse)) {
					errs() << "\tx is tainted from: "; aUse->print(errs()); errs() << "\n";
				}
			}
		}
	}
}

#endif /* CTAINTINTRAPROCEDURAL_H_ */
