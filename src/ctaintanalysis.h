/*
 * ctaintanalysis.h
 *
 *  Taint Analysis Header File
 *
 *  Created on: 2013-11-10
 *  Author: Xavier N. Noumbissi
 */

#ifndef CTAINTANALYSIS_H_
#define CTAINTANALYSIS_H_

#include <llvm/ADT/Statistic.h>
#include <llvm/Support/Debug.h>
#include <llvm/Pass.h>
#include <llvm/Analysis/CallGraph.h>
#include <llvm/InstVisitor.h>

#include <dsa/DSGraph.h>
#include <dsa/DataStructure.h>

//#include <boost/regex.hpp>

#include <list>
using std::list;

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
#define SINK_ARG_DELIM ","

typedef enum {
  TAINTED_VALUE_USE,
  FORMAT_STRING_VUL
} WarningType;

typedef struct {
	WarningType warnType;
	Value *_taintedVal;
} AnalysisIssue;

typedef struct {
	map<unsigned, vector<AnalysisIssue *> *> *_lineToIssues;

	bool addIssue(unsigned line, WarningType aWarnType, Value *taintedVal = 0) {
		bool ret = false;

		if (!(*_lineToIssues)[line]) {
			(*_lineToIssues)[line] = new vector<AnalysisIssue *>();
			ret = true;
		}

		AnalysisIssue *issue = new AnalysisIssue;
		issue->warnType = aWarnType;
		if (taintedVal)	issue->_taintedVal = taintedVal;

		(*_lineToIssues)[line]->push_back(issue);
		return ret;
	}

} AnalysisWarnings;

typedef map<unsigned, vector<AnalysisIssue *> *>::iterator MLineToIssueIterator;

typedef enum {
  EMPTY_FORMAT_STRING,
  WRONG_FORMAT_SPEC,
  MISSING_FORMAT_SPEC,
  CORRECT_FORMAT_SPEC
} FormatStringType;

typedef struct {
	FormatStringType fmtStrType;
} FormatStringSpec;

/**
 * (taintInfo, argNo)
 */
//typedef pair<bool, unsigned> FunctionParam;

/**
 * This class inherits from InstVisitor only because of the context-sensitive
 * analysis. This is needed so that a call to InsVisitor::visit(Function &)
 * can happen in method 'handleContextCall'.
 *
 * This enables the reuse of visit-methods defined in this class. During
 * the intraprocedural analysis, the visit-methods defined in this class
 * are called by subclasses of CForwardFlowAnalysis.
 *
 */
class CTaintAnalysis : public ModulePass, public InstVisitor<CTaintAnalysis> {
public:
	static char ID;
	static const unsigned INDENT_LENGTH;

	static const char PERCENT;
	/*static const boost::regex FS_FLAGS;
	static const boost::regex FS_WIDTH;
	static const boost::regex FS_PRECISION;
	static const boost::regex FS_LENGTH;
	static const boost::regex FS_SPECIFIER;*/

	void getAnalysisUsage(AnalysisUsage & AU) const;
	virtual bool runOnModule(Module & F);

	CTaintAnalysis();
	~CTaintAnalysis();

	inline map<Function *, vector<bool> *> &getSummaryTable() {
		return _summaryTable;
	}

	void printSummaryTable();
	void printSummaryTableInfo(Function *f);
	void printSummaryTableInfo(Function *f, unsigned param);

	inline vector<Function *> *getAllProcsTPOrder() { return &_allProcsTPOrder; }
	inline vector<Function *> *getAllProcsRTPOrder() { return &_allProcsRTPOrder; }

	virtual void visit(Instruction &I);
	virtual void visit(BasicBlock &BB){
	  _super->visit(BB.begin(), BB.end());
	}
	void visitLoadInst(LoadInst &I);
	void visitStoreInst(StoreInst &I);
	void visitCallInst(CallInst &I);
	void visitCallInstSink(CallInst & I);
	void visitReturnInst(ReturnInst &I);
	void visitCastInst(CastInst &I);
   	void visitBinaryOperator(BinaryOperator &I);
	void visitVACopyInst(VACopyInst &I);

	void checkTaintedValueUse(CallInst &I, Function &callee, unsigned formatPos = _FUNCTION_NOT_FORMAT);

	const char *getConstantCString(ConstantExpr *C);
	const char *getCStringInitializer(Value *v, DSGraph *dsg);
	bool checkFormatStr(Function &caller, Value *curArg, vector<string::size_type> &result, unsigned line = -1);
	void handleFormatSink(CallInst &I, Function &callee, unsigned formatPos);

	void set_diff(set<Value *> &A, set<Value *> &B, set<Value *> &AMinusB);
	virtual bool merge(BasicBlock *curBB, BasicBlock *succBB);
	void mergeCopyPredOutFlowToInFlow(Instruction &predInst, Instruction &curInst);

	bool isProcArgTaint(Function *F, unsigned argNo);
	void setProcArgTaint(Function *F, unsigned argNo, bool isTainted);

	/**
	 * Returns 'true' if value 'v' is tainted at the program
	 * point before instruction 'I'.
	 */
	bool isValueTainted(Instruction *I, Value *v);
	bool calls(Function *caller, Function *callee);

	inline DSGraph* getDSGraph(Function *F) { return _functionToDSGraph[F]; }
	inline CallGraph &getCallGraph() { return *_cg; }
	inline Function *getMainFunction() { return _pointerMain; }

	inline void setIntraWasRun(bool flag) { _intraWasRun = flag; }
	inline void setInterRunning(bool flag) { _interRunning = flag; }
	inline void setCtxInterRunning(bool flag) { _ctxInterRunning = flag; }

	inline Module * getModule() { return _module; }

private:
	const static string _taintId;
	const static string _taintSourceFile;
	const static string _taintSinkFile;
	const static string _formatStrFile;

	const static unsigned _INVALID_FORMAT_POS;
	const static unsigned _SOURCE_ARG_RET;
	const static unsigned _FUNCTION_NOT_SOURCE;
	const static unsigned _FUNCTION_NOT_FORMAT;

	static map<string, unsigned> _taintSources;
	static map<string, unsigned> _formatSinks;
	static map<string, unsigned> _formatStrPos;

	map<Value *, vector<Instruction *> * > _valueToTaintInst;

	map<Function *, AnalysisWarnings * > _allWarnings;

	/**
	 * Adds the function with name 'source' as a taint source and
	 * specifies that its parameter at position 'taintedPos' gets
	 * tainted.
	 */
	static void addTaintInfo(map<string, unsigned> *target, string &source, unsigned taintedPos);

	/**
	 * Reads the configuration file where functions considered
	 * as taint source are registered.
	 */
	static void readTaintSourceConfig();
	static void readTaintSinkConfig();
	static void readFormatStrConfig();

	/**
	 * Returns an integer p (p > 0) whenever function with
	 * name 'F' is a taint source. The return value 'p' is the
	 * position of its parameter that gets tainted.
	 *
	 * 'p' has the value '-1' in case function 'F' is not a
	 * taint source.
	 */
	unsigned isTaintSource(string &F);
	unsigned isFormatSink(string &F);
	unsigned getLineNumber(Instruction &I);

	/** Has the intraprocedural analysis been run */
	bool _intraWasRun;

	/** Has the interprocedural Context-Insenstive analysis been run */
	bool _interRunning;

	/** Is the interprocedural Context-Insenstive analysis currently running */
	bool _ctxInterRunning;

	/** Pointer to the 'main' function */
	Function *_pointerMain;

	InstVisitor<CTaintAnalysis> *_super;

	Instruction *_predInst;

	Module *_module;

	/**
	 * Map from program funtion signatures as string to
	 * Function pointers
	 */
	map<string, Function*> _signatureToFunc;

	vector<Function *> _allProcsTPOrder;

	vector<Function *> _allProcsRTPOrder;

	/**
	 * Summary table where we store function parameters and
	 * return value taint information
	 */
	map<Function *, vector<bool> *> _summaryTable;

	EQTDDataStructures *_aliasInfo;
	DSGraph *_globalsGraph;

	map<Function *, DSGraph *> _functionToDSGraph;

	CallGraph *_cg;

	void getAliases(Value *v, DSGraph *dsg, vector<Value *> &aliases);

	//Data structure representing the analysis flowset data type
	//TODO: use StringMap from llvm
	map<Instruction *, set<Value *> > _IN;
	map<Instruction *, set<Value *> > _OUT;

	void insertToOutFlow(Instruction *I, Value *v);
	void insertToOutFlow(Instruction *I, Value *v, DSGraph *dsg);
	inline void vectorUniqueInsert(Instruction *I, vector<Instruction *> &v);
	inline void vectorUniqueInsert2(Value *v, vector<Value *> &instV);
	template<typename T>
	bool vectorContains(vector<T> &v, T &aValue);

	static void log(const string &msg);
	static AnalysisWarnings *createAnalysisWarning();
	static void deleteAnalysisWarning(AnalysisWarnings *a);

};

typedef map<Function *, vector<bool> *>::iterator MFuncSumIterator;
typedef vector<bool>::iterator VBoolIterator;

template<typename T>
bool CTaintAnalysis::vectorContains(vector<T> &v, T &aValue)
{
	vector<Instruction *>::iterator it = std::find(v.begin(), v.end(), aValue);
	return (v.end() != it);
}

}


#endif /* CTAINTANALYSIS_H_ */
