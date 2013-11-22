/*
 * CForwardFlowAnalysis.h
 *
 *  Created on: 2013-11-09
 *      Author: noundou
 */

#ifndef CFORWARDFLOWANALYSIS_H_
#define CFORWARDFLOWANALYSIS_H_

#include <llvm/InstVisitor.h>
#include <llvm/Support/CFG.h>
#include <llvm/Support/raw_ostream.h>

#include <vector>
using std::vector;

using namespace llvm;

namespace {
class CForwardFlowAnalysis : public InstVisitor<CForwardFlowAnalysis> {

public:
	CForwardFlowAnalysis(vector<Function *> *allProcs);
	virtual ~CForwardFlowAnalysis(){}

	virtual void mergeCopyPredOutFlowToInFlow(Instruction &predInst, Instruction &curInst) {
		errs() << "You must overwrite this method to implement mergeCopyPredOutFlowToInFlow!\n";
	}

	virtual bool merge(BasicBlock *curBB, BasicBlock *succBB) {
		errs() << "You must overwrite this method to implement the 'merge' operation!\n";
		return false;
	}

	void localVisitBasicBlock(BasicBlock &bb) {
		_super->visit(bb);
	}

	void visit(Instruction &I) {
		if (_predInst)
			mergeCopyPredOutFlowToInFlow(*_predInst, I);
		_super->visit(I);
		_predInst = &I;
	}

	virtual void visitStoreInst(StoreInst &I){}
	virtual void visitCallInst(CallInst &I){}
	virtual void visitReturnInst(ReturnInst &I){}

	void analyze();

protected:
	vector<Function *> *_allProcs;
	vector<BasicBlock *> _workList;
	Instruction *_predInst;
	InstVisitor *_super;

	void insert(BasicBlock *BB);
	BasicBlock * next();
	void initWorkList();
};
}

CForwardFlowAnalysis::CForwardFlowAnalysis(vector<Function *> *allProcs)
	:_allProcs(allProcs),
	 _predInst(0) {
	_super = static_cast<InstVisitor*>(this);
	assert(_super && "The super class InstVisitor must be non null!");
}

void CForwardFlowAnalysis::initWorkList(){
	Function *F = 0;
	BasicBlock *BB = 0;

	for(unsigned k = 0; k < _allProcs->size(); ++k) {
		F = (*_allProcs)[k];
		for (Function::iterator it = F->begin(), e = F->end(); it != e; ++it) {
			BB = &*it;
			insert(BB);
		}
	}
	//errs() << " _workList size: " << _workList.size() << "\n";
}

inline void CForwardFlowAnalysis::insert(BasicBlock *BB) {
	_workList.insert(_workList.begin(), BB);
}

BasicBlock * CForwardFlowAnalysis::next() {
	BasicBlock *result = _workList.back();
	_workList.pop_back();
	return result;
}

/**
 * Implements the data flow framework iterative
 * worklist algorithm.
 */
void CForwardFlowAnalysis::analyze() {
	initWorkList();
	BasicBlock *bb = 0;
	BasicBlock *succBB = 0;
	bool outHasBeenModified = false;

	while(!_workList.empty()) {
		bb = next();
		localVisitBasicBlock(*bb);
		for (succ_iterator pi = succ_begin(bb), E = succ_end(bb); pi != E; ++pi) {
			succBB = *pi;
			localVisitBasicBlock(*succBB);
			outHasBeenModified = merge(bb, succBB);
			if ( outHasBeenModified )
				insert(succBB);
		}
	}
}

#endif /* CFORWARDFLOWANALYSIS_H_ */
