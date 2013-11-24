/*
 * CTaintAnalysis.h
 *
 *  Created on: 2013-11-10
 *      Author: noundou
 */

#ifndef CTAINTANALYSIS_H_
#define CTAINTANALYSIS_H_


#include <llvm/Pass.h>
#include <llvm/Analysis/CallGraph.h>
#include <dsa/DSGraph.h>
#include <dsa/DataStructure.h>

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

//typedef map<Value *, vector<Instruction &> >  ValueTaintingTable;

/**
 * (taintInfo, argNo)
 */
//typedef pair<bool, unsigned> FunctionParam;

class CTaintAnalysis : public ModulePass {
public:
	static char ID;

	void getAnalysisUsage(AnalysisUsage & AU) const;
	virtual bool runOnModule(Module & F);

	CTaintAnalysis();
	~CTaintAnalysis();
	inline vector<Function *> *getAllProcs() {
		return &_allProcs;
	}

	void visitStoreInst(StoreInst &I);
	void visitCallInst(CallInst &I);
	void visitReturnInst(ReturnInst &I);

	virtual bool merge(BasicBlock *curBB, BasicBlock *succBB);
	void mergeCopyPredOutFlowToInFlow(Instruction &predInst, Instruction &curInst);

	void printIn(Instruction &I);
	void printOut(Instruction &I);

	inline DSGraph* getDSGraph(Function *F) {
		return _functionToDSGraph[F];
	}

	inline void setProcArgTaint(Function *F, unsigned argNo, bool isTainted) {
		vector<bool> *argInfo = _summaryTable[F];
		assert ( (argInfo->size() > argNo) && "Invalid function argument number!" );
		(*argInfo)[argNo] = isTainted;
	}

	inline bool isProcArgTaint(Function *F, unsigned argNo) {
		vector<bool> * argInfo = _summaryTable[F];
		assert ( (argInfo->size() > argNo) && "Invalid function argument number!" );
		return (*argInfo)[argNo];
	}

	/**
	 * Returns 'true' if value 'v' is tainted at the program
	 * point before instruction 'I'.
	 */
	bool isValueTainted(Instruction *I, Value *v);

	//AliasSet *getAliasSetForValue(Value *v, Function *F);

private:
	const static string _taintId;
	const static string _taintSourceFile;
	const static int _sourceArgRet;
	const static int _SOURCE_ARG_INVALID_MIN;
	const static int _FUNCTION_NOT_SOURCE;
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
	int isTaintSource(string &F);

	/** Has the intraprocedural analysis been run */
	bool _intraFlag;

	/** Has the interprocedural Context-Insenstive analysis been run */
	bool _interFlag;

	/** Has the interprocedural Context-Senstive analysis been run */
	bool _interContextSensitiveFlag;

	/** Pointer to the 'main' function */
	Function *_pointerMain;

	/**
	 * Map from program funtion signatures as string to
	 * Function pointers
	 */
	map<string, Function*> _signatureToFunc;

	vector<Function *> _allProcs;

	/**
	 * Summary table where we store function parameters and
	 * return value taunt information
	 */
	map<Function *, vector<bool> *> _summaryTable;

	EQTDDataStructures *_aliasInfo;

	map<Function *, DSGraph *> _functionToDSGraph;

	void getAliases(Value *v, DSGraph *dsg, vector<Value *> &aliases);

	//Data structure representing the analysis flowset data type
	//TODO: use StringMap from llvm
	map<Instruction *, set<Value *> > _IN;
	map<Instruction *, set<Value *> > _OUT;
	//ValueTaintingTable _valTaintInfo;

	void insertToOutFlow(Instruction *I, Value *v);

	static void log(const string &msg);
};
}


#endif /* CTAINTANALYSIS_H_ */
