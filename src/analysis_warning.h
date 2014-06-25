/*
 * analysis_warning.h
 *
 *  Created on: 2014-06-24
 *      Author: Xavier N. Noumbissi
 */

#ifndef ANALYSIS_WARNING_H_
#define ANALYSIS_WARNING_H_

#include <llvm/IR/Value.h>
#include <llvm/IR/Function.h>
#include <string>
#include <vector>

using std::string;
using std::vector;

using namespace llvm;

namespace {

typedef enum {
  WARN_TYPE_UNDEFINED,
  TAINTED_VALUE_USE,
  FORMAT_TAINTED_VALUE_USE,
  FORMAT_STRING_VUL,
  FORMAT_STRING_MISSING_VUL
} WarnType;

class AnalysisIssue {

public:
	AnalysisIssue(Function *f, Function *sink, Value *val);
	~AnalysisIssue();

	static const unsigned INDENT_LENGTH;

	inline Function *getFunction(){ return _f; }
	inline Function *getSink(){ return _sink; }
	inline Value *getValue(){ return _val; }
	inline WarnType getWarnType(){ return _warnType; }
	inline unsigned getLine(){ return  _line; }
	inline int getFormatStrPos(){ return  _formatStrPos; }
	inline int getFuncParam(){ return _funcParam; }
	inline string getMessage(){ return _message; }

	inline void setFunction(Function *f){ _f = f; }
	inline void setSink(Function *sink){ _sink = sink; }
	inline void setValue(Value *v){ _val = v; }
	inline void setWarnType(WarnType wType){ _warnType = wType; }
	inline void setLine(unsigned line){ _line = line; }
	inline void setFormatStrPos(int formatStrPos){ _formatStrPos = formatStrPos; }
	inline void setFuncParam(unsigned funcParam){ _funcParam = funcParam; }
	inline void setMessage(string msg){ _message.assign(msg); }

	bool operator== (const AnalysisIssue* rhs);
	bool operator== (const AnalysisIssue& rhs);

	void print();

private:
	Function *_f;
	Function *_sink;
	Value *_val;
	WarnType _warnType;
	unsigned _line;
	int _formatStrPos;
	int _funcParam;
	string _message;
};

const unsigned AnalysisIssue::INDENT_LENGTH = 20;

inline AnalysisIssue::AnalysisIssue(Function *f, Function *sink, Value *val)
	:_f(f),
	 _sink(sink),
	 _val(val),
	 _warnType(WARN_TYPE_UNDEFINED),
	 _line(0),
	 _formatStrPos(-1),
	 _funcParam(-1)
{
	assert(_f && "Each created analysis issue (warning) must specify a function where it occurs!");
}

inline AnalysisIssue::~AnalysisIssue()
{
	_f = 0;
	_sink = 0;
	_val = 0;
	_line = 0;
	_funcParam = -1;
	_formatStrPos = -1;
	_message.clear();
}

bool AnalysisIssue::operator== (const AnalysisIssue& rhs)
{
	return this->_f == rhs._f &&
		   this->_sink == rhs._sink &&
		   this->_val == rhs._val &&
		   this->_line == rhs._line &&
		   this->_formatStrPos == rhs._formatStrPos &&
		   this->_warnType == rhs._warnType &&
		   this->_funcParam == rhs._funcParam;
}

bool AnalysisIssue::operator== (const AnalysisIssue* rhs)
{
	return this->_f == rhs->_f &&
		   this->_sink == rhs->_sink &&
		   this->_val == rhs->_val &&
		   this->_line == rhs->_line &&
		   this->_formatStrPos == rhs->_formatStrPos &&
		   this->_warnType == rhs->_warnType &&
		   this->_funcParam == rhs->_funcParam;
}

void AnalysisIssue::print()
{
	if (_warnType == FORMAT_STRING_VUL) {
		DEBUG_WITH_TYPE("waint-warnings", errs() << "[waint][fmtvul-1] Use of tainted format string (argument #"
				<< _funcParam << ") in sink function '"
				<< _sink->getName()
				<< ". [line " << _line << "]\n");
		DEBUG_WITH_TYPE("waint-warnings", if (_val->hasName()) errs().indent(INDENT_LENGTH)
				<< _val->getName(); else _val->print(errs().indent(INDENT_LENGTH)));
	}
	else if (_warnType == FORMAT_TAINTED_VALUE_USE) {

		DEBUG_WITH_TYPE("waint-warnings", errs() << "[waint][fmtvul-2] Parameter #"
				<< _funcParam
				<< " of sink format string function '" << _sink->getName()
				<< "' is tainted. [line " << _line << "]\n");
		DEBUG_WITH_TYPE("waint-warnings", if (_val->hasName()) errs().indent(INDENT_LENGTH)
				<< _val->getName(); else _val->print(errs().indent(INDENT_LENGTH)));
	}
	else if (_warnType == TAINTED_VALUE_USE) {

		DEBUG_WITH_TYPE("waint-warnings", errs() << "[waint][tval] Use of tainted value as parameter #"
				<< _funcParam << " in sink function '" << _sink->getName()
				<< "'. [line " << _line << "]\n");
		DEBUG_WITH_TYPE("waint-warnings", if (_val->hasName()) errs().indent(INDENT_LENGTH)
				<< _val->getName(); else _val->print(errs().indent(INDENT_LENGTH)));

		DEBUG_WITH_TYPE("waint-warnings", errs().indent(INDENT_LENGTH)
				<< " [Parameter #" << _funcParam << "] of '" << _sink->getName() << "' gets tainted\n");
	}
	else if (_warnType == FORMAT_STRING_MISSING_VUL) {
		DEBUG_WITH_TYPE("waint-warnings", errs() << "[waint][fmtvul-3] ");
		DEBUG_WITH_TYPE("waint-warnings", errs() << " Argument at position "
				<< _formatStrPos << " of function '" <<  _sink->getName()
				<< "' shall be a format string [line " << _line << "] \n");

		DEBUG_WITH_TYPE("waint-warnings", errs().indent(INDENT_LENGTH) << "# Not => ");
		if (_val)	DEBUG_WITH_TYPE("waint-warnings", _val->print(errs()));
		DEBUG_WITH_TYPE("waint-warnings", errs() << "\n");
	}
}

}

#endif /* ANALYSIS_WARNING_H_ */
