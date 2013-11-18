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

#include <vector>
using std::vector;

using namespace llvm;

namespace {
class CDataFlow : public InstVisitor<CDataFlow> {

public:
	CDataFlow(){}
	virtual ~CDataFlow(){}

	virtual void initWorkList(vector<Instruction *> &workList) {
		errs() << "You must overwrite this method to initialize the worklist!\n";
	}

	virtual void merge(Instruction *curInst, Instruction *nextInst) {
		errs() << "You must overwrite this method to implement the 'merge' operation!\n";
	}

	virtual bool outFlowHasBeenModified() {
		errs() << "You must overwrite this method. It must return "
				"'true' whenever the OUT set has been modified by the previous iteration!\n";
		return false;
	}

	inline int getWorkListSize() {
		return _workList.size();
	}

	virtual void visitLoadInst(LoadInst &I){}
	virtual void visitStoreInst(StoreInst &I){}
	virtual void visitGetElementPtrInst(GetElementPtrInst &I){}
	virtual void visitVAArgInst(VAArgInst & I){}
	virtual void visitCallInst(CallInst &I){}
	virtual void visitAllocaInst(AllocaInst &I){}
	void analyze();

protected:

	vector<Instruction *> _workList;
	void insert(Instruction *I);
	Instruction * next();
	void getAllBeforeNextTerminator(Instruction *I, vector<Instruction *> &succs);
	void getSuccessors(Instruction *I, vector<Instruction *> &succs);
};
}

inline void CDataFlow::insert(Instruction *I) {
	_workList.insert(_workList.begin(), I);
}

Instruction * CDataFlow::next() {
	Instruction *result = _workList.back();
	_workList.pop_back();
	return result;
}

void CDataFlow::getAllBeforeNextTerminator(Instruction *I, vector<Instruction *> &succs) {
	Instruction *n = I->getNextNode();
	while( !n->isTerminator() ){
		succs.insert(succs.begin(), n);
		n = n->getNextNode();
	}
}

void CDataFlow::getSuccessors(Instruction *I, vector<Instruction *> &succs) {
	if (I->isTerminator()) {
		TerminatorInst *T = cast<TerminatorInst> (I);
		unsigned succNr = T->getNumSuccessors();
		for(unsigned k = 0; k < succNr; ++k) {
			BasicBlock *succBB = T->getSuccessor(k);
			Instruction &succFirst = succBB->front();
			succs.insert(succs.begin(), &succFirst);
			getAllBeforeNextTerminator(&succFirst, succs);
		}
	}
	else {
		getAllBeforeNextTerminator(I, succs);
	}
}

/**
 * Implements the data flow framework iterative
 * worklist algorithm.
 */
void CDataFlow::analyze() {
	initWorkList(_workList);

	Instruction *curI = 0;
	Instruction *nextI = 0;

	while(!_workList.empty()) {
		curI = next();

		//errs() << "\n## cur inst \n";
		//curI->print(errs());
		//errs() << "\n TYPE ";
		//curI->getType()->print(errs());
		//errs() << curI->getOpcodeName();
		//errs() << "\n";

		visit(*curI);

		//Has any _OUT value been modified ?
		if (outFlowHasBeenModified()) {
			//errs() << "## cur inst modified \n";
			//curI->print(errs());
			//errs() << "\n";
			vector<Instruction *> succs;
			getSuccessors(curI, succs);
			for(vector<Instruction *>::iterator its = succs.begin(), itEnd = succs.end();
					its != itEnd;
					++its )
			{
				nextI = *its;
				merge(curI, nextI);
				insert(nextI);
			}
		}
	}
}


#endif /* CDATAFLOW_H_ */
