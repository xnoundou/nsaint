/*
 * forwardanalysis.h
 *
 * Generic Forward Flow Analysis
 *
 *  Created on: 2013-11-09
 *      Author: Xavier N. Noumbissi
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

	virtual void visit(Instruction &I) {
	  if(_predInst)
	    mergeCopyPredOutFlowToInFlow(*_predInst, I);
	  _super->visit(I);
	  //errs() << "## pred: "; _predInst->print(errs()); errs()<<"\n";
	  _predInst = &I;
	}

	virtual void visitLoadInst(LoadInst &I){}
	virtual void visitStoreInst(StoreInst &I){}
	virtual void visitCallInst(CallInst &I){}
	virtual void visitReturnInst(ReturnInst &I){}

	virtual void analyze();

	bool updateAnalyzedFunction(BasicBlock *bb);

protected:
	vector<Function *> *_allProcs;
	vector<BasicBlock *> _workList;
	Instruction *_predInst;
	Function *_curAnalyzedFunction;

	virtual void insert(BasicBlock *BB);
	BasicBlock * next();
	virtual void initWorkList();


private:
	InstVisitor *_super;

};
}

CForwardFlowAnalysis::CForwardFlowAnalysis(vector<Function *> *allProcs)
	:_allProcs(allProcs),
	 _predInst(0),
	 _curAnalyzedFunction(0)
{
	_super = static_cast<InstVisitor *>(this);
	assert(_super && "The super class InstVisitor must be non null!");
}

void CForwardFlowAnalysis::initWorkList(){
	_workList.clear();

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

bool CForwardFlowAnalysis::updateAnalyzedFunction(BasicBlock *bb) {
	Function *f = bb->getParent();
	if ( 0 == _curAnalyzedFunction ){
		_curAnalyzedFunction = f;
		//errs() << "[Processing][Function][" << _curAnalyzedFunction->getName() << "]\n";
		return true;
	}
	else if (!f->getName().equals(_curAnalyzedFunction->getName())) {
		_curAnalyzedFunction = f;
		//errs() << "[Processing][Function][" << _curAnalyzedFunction->getName() << "]\n";
		return true;
	}

	return false;
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
		updateAnalyzedFunction(bb);
		_super->visit(*bb);
		for (succ_iterator pi = succ_begin(bb), E = succ_end(bb); pi != E; ++pi) {
			succBB = *pi;
			_super->visit(*succBB);
			outHasBeenModified = merge(bb, succBB);
			if ( outHasBeenModified )
				insert(succBB);
		}
	}
}

#endif /* CFORWARDFLOWANALYSIS_H_ */
