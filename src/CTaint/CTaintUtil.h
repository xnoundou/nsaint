/*
 * CTaintUtil.h
 *
 *  Created on: 2013-10-22
 *      Author: noundou
 */

#ifndef CTAINTUTIL_H_
#define CTAINTUTIL_H_

#include <llvm/IR/Instruction.h>
#include <llvm/Support/raw_ostream.h>
#include <llvm/Analysis/CallGraph.h>

using namespace llvm;

#include <fstream>

#include <vector>
#include <string>
using std::vector;
using std::string;

#include <map>
using std::map;

#include <set>
using std::set;
using std::pair;

namespace {

/**
 * Global data structures for the analysis algorithms
 */

#define ENTRY_POINT "main"

typedef string Var;
//Data structure representing the analysis flowset data type
//TODO: use StringMap from llvm
typedef map<Instruction *, set<Var> >  FlowSet;

typedef vector< pair<bool, string> > FunctionParam;

//Summary table where we store function parameters and
//return value taunt information
map<string, FunctionParam> _summaryTable;

FlowSet IN;
FlowSet OUT;

//Map from program funtion signatures as string to Function pointers
map<string, Function*> _signatureToFunc;

//CallGraphNode *_cgRootNode = 0;

class CTaintUtil {

public:
	inline static void log(const string &msg) {
		errs() << _taintId << msg << '\n';
	}

	inline static string taintId() {
		return _taintId;
	}

	inline static string taintSourceFilde() {
		return _taintSourceFile;
	}

private:
	const static string _taintId;
	const static string _taintSourceFile;
	static vector<string> _taintSources;

	void readConfig();
};

const string CTaintUtil::_taintId("[STTAL]");
const string CTaintUtil::_taintSourceFile("cfg/sources.cfg");

}

#endif /* CTAINTUTIL_H_ */
