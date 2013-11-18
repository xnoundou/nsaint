/*
 * CTaintAnalysis.h
 *
 *  Created on: 2013-11-10
 *      Author: noundou
 */

#ifndef CTAINTANALYSIS_H_
#define CTAINTANALYSIS_H_


#include <llvm/Pass.h>
#include <llvm/IR/Module.h>
#include <llvm/Analysis/LoopInfo.h>
#include <llvm/Support/InstIterator.h>
#include <llvm/InstVisitor.h>
#include <llvm/IR/Instruction.h>
#include <llvm/Analysis/CallGraph.h>
#include <llvm/Analysis/AliasAnalysis.h>
#include <llvm/Analysis/AliasSetTracker.h>
#include <llvm/Target/Mangler.h>
#include <llvm/Support/CFG.h>

#include <fstream>

#include <sstream>
#include <algorithm>
#include <iterator>

#include <vector>
#include <string>
using std::vector;

using std::string;

#include <set>
using std::set;

#include <map>
using std::map;

using std::pair;

using namespace llvm;

namespace {

#define ENTRY_POINT "main"
#define SOURCE_ARG_DELIM ","

//Data structure representing the analysis flowset data type
//TODO: use StringMap from llvm
typedef map<Instruction *, set<Value *> >  FlowSet;
typedef map<Instruction *, set<Value *> >::iterator ItFlowSet;
typedef map<Instruction *, set<Value *> >::value_type ValTypeFlowSet;

//typedef map<Value *, vector<Instruction &> >  ValueTaintingTable;
//typedef map<Value *, vector<Instruction &> >::iterator ItValueTaintingTable;
//typedef map<Value *, vector<Instruction &> >::value_type ValTypeValueTaintingTable;

typedef vector< pair<bool, string> > FunctionParam;

typedef struct {

	set<Value *>::iterator begin(){
		return _modified.begin();
	}

	set<Value *>::iterator end(){
		return _modified.end();
	}

	void addValue(Value *v){
		_modified.insert(v);
	}

	bool hasBeenModified(){
		return _modified.size() > 0;
	}

	void reset(){
		_modified.clear();
	}

private:
	set<Value *> _modified;

} OutputModifiedInfo;

class CTaintAnalysis : public ModulePass,
						public InstVisitor<CTaintAnalysis> {
public:
	static char ID;

	void getAnalysisUsage(AnalysisUsage & AU) const;

	virtual bool runOnModule(Module & F);

	CTaintAnalysis();
	void visitLoadInst(LoadInst &I);
	void visitStoreInst(StoreInst &I);
	void visitGetElementPtrInst(GetElementPtrInst &I);
	void visitVAArgInst(VAArgInst & I);
	void visitCallInst(CallInst &I);
	void visitAllocaInst(AllocaInst &I);

	/**
	 * Returns 'true' if any entry of the 'OUT' set has
	 * been modified by the previous iteration.
	 */
	bool outFlowHasBeenModified();

	/**
	 * Initialize the work list 'workList' by adding relevant
	 * instructions to it. This method also initialize
	 * the '_IN' and '_OUT' flow sets.
	 */
	void initWorkList(vector<Instruction *> &workList);

	/**
	 * Returns the next instruction to process from the
	 * worklist 'workList'.
	 */
	Instruction * next(vector<Instruction *> &workList);

	/**
	 * Inserts instruction 'I' in the worklist 'workList'
	 */
	inline void insert(vector<Instruction *> &workList, Instruction *I);
	inline void merge(Instruction *I);

private:
	const static string _taintId;
	const static string _taintSourceFile;
	static map<string, int> _taintSources;

	/**
	 * Adds the function with name 'source' as a taint source and
	 * specifies that its parameter at position 'taintedPos' gets
	 * tainted.
	 */
	static void addTaintSource(string &source, unsigned taintedPos);

	/**
	 * Reads the configuration file where functions considered
	 * as taint source are registered.
	 */
	static void readTaintSourceConfig();

	/**
	 * Returns an integer p (p > 0) whenever function with
	 * name 'F' is a taint source. The return value 'p' is the
	 * position of its parameter that gets tainted.
	 *
	 * 'p' has the value '-1' in case function 'F' is not a
	 * taint source.
	 */
	unsigned isTaintSource(string &F);
	inline Function * getFunction(Instruction &I);

	/** Has the intraprocedural analysis been run */
	bool _intraFlag;

	/** Has the interprocedural Context-Insenstive analysis been run */
	bool _interFlag;

	/** Was the AliasSetTracker instance already been initialized */
	bool _aliasFlag;

	/** Has the interprocedural Context-Senstive analysis been run */
	bool _interContextSensitiveFlag;

	/** Pointer to the 'main' function */
	Function *_pointerMain;

	/** Pointer the 'main' function's first instruction */
	Instruction *_firstInstMain;

	AliasAnalysis *_aa;

	AliasSetTracker *_curAST;

	DenseMap<Function*, AliasSetTracker*> _functionToAliasSetMap;

	/**
	 * Top level variables
	 */
	set<Value *> _addressTakenVars;

	inline bool isTopLevelVar(Value *v) {
		return (0 == _addressTakenVars.count(v));
	}

	/**
	 * Map from program funtion signatures as string to
	 * Function pointers
	 */
	map<string, Function*> _signatureToFunc;
	typedef map<string, Function*>::iterator ItFunction;

	/**
	 * Summary table where we store function parameters and
	 * return value taunt information
	 */
	map<string, FunctionParam> _summaryTable;
	typedef map<string, FunctionParam>::iterator itSummaryTable;

	FlowSet _IN;
	FlowSet _OUT;
	//ValueTaintingTable _valTaintInfo;

	OutputModifiedInfo _lastFlowInfo;

	void printIn(Instruction &I);
	void printOut(Instruction &I);
	void mergeCopyPredOutFlowToInFlow(Instruction &I);
	inline void insertToOutFlow(Instruction *I, Value *v);

	/**
	 * Returns 'true' if value 'v' is tainted at the program
	 * point before instruction 'I'.
	 */
	inline bool isValueTainted(Instruction *I, Value *v);

	static void log(const string &msg);

	/**
	 * Adds all relevant instructions to the AliasSetTracker instance
	 * in order to manage and query alias sets information.
	 */
	void collectAliasInfo();

	void getAllBeforeNextTerminator(Instruction *I, vector<Instruction *> &succs);
	void getSuccessors(Instruction *I, vector<Instruction *> &succs);
};
}


#endif /* CTAINTANALYSIS_H_ */
