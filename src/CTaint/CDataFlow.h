/*
 * CDataFlow.h
 *
 *  Created on: 2013-11-09
 *      Author: noundou
 */

#ifndef CDATAFLOW_H_
#define CDATAFLOW_H_

#include <llvm/IR/Instruction.h>
#include <llvm/InstVisitor.h>
#include <llvm/Support/CFG.h>

#include <vector>
using std::vector;

using namespace llvm;

namespace {
class CDataFlow : public InstVisitor<CDataFlow> {

public:
	CDataFlow(vector<Function *> *allProcs);
	virtual ~CDataFlow(){}

	virtual void mergeCopyPredOutFlowToInFlow(Instruction &predInst, Instruction &curInst) {
		errs() << "You must overwrite this method to implement mergeCopyPredOutFlowToInFlow!\n";
	}

	virtual bool merge(BasicBlock *curBB, BasicBlock *succBB) {
		errs() << "You must overwrite this method to implement the 'merge' operation!\n";
		return false;
	}

	virtual bool outFlowHasBeenModified() {
		errs() << "You must overwrite this method. It must return "
				"'true' whenever the OUT set has been modified by the previous iteration!\n";
		return false;
	}

	void localVisitBasicBlock(BasicBlock &bb) {
		static_cast<InstVisitor*>(this)->visit(bb);
	}

	void visit(Instruction &I) {
		if (_predInst)
			mergeCopyPredOutFlowToInFlow(*_predInst, I);
		static_cast<InstVisitor*>(this)->visit(I);
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

	void insert(BasicBlock *BB);
	BasicBlock * next();
	void initWorkList();
};
}

CDataFlow::CDataFlow(vector<Function *> *allProcs)
	:_allProcs(allProcs),
	 _predInst(0) {
}

void CDataFlow::initWorkList(){
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

inline void CDataFlow::insert(BasicBlock *BB) {
	_workList.insert(_workList.begin(), BB);
}

BasicBlock * CDataFlow::next() {
	BasicBlock *result = _workList.back();
	_workList.pop_back();
	return result;
}

/**
 * Implements the data flow framework iterative
 * worklist algorithm.
 */
void CDataFlow::analyze() {
	initWorkList();
	BasicBlock *bb = 0;
	BasicBlock *succBB = 0;

	while(!_workList.empty()) {
		bb = next();
		localVisitBasicBlock(*bb);
		for (succ_iterator pi = succ_begin(bb), E = succ_end(bb); pi != E; ++pi) {
			succBB = *pi;
			localVisitBasicBlock(*succBB);
			if ( merge(bb, succBB) ) {
				insert(succBB);
			}
		}
	}
}

#endif /* CDATAFLOW_H_ */
