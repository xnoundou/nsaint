/* 
 * File:   Q5ArrayChecker.cpp
 * Author: noundou
 *
 * Created on August 6, 2013, 4:50 PM
 */

#include "ClangSACheckers.h"
#include "clang/StaticAnalyzer/Core/BugReporter/BugType.h"
#include "clang/StaticAnalyzer/Core/Checker.h"
#include "clang/StaticAnalyzer/Core/PathSensitive/CallEvent.h"
#include "clang/StaticAnalyzer/Core/PathSensitive/CheckerContext.h"

using namespace clang;
using namespace ento;

namespace{

  struct Q5ArrayState {
    enum Status { IndexUnchecked, IndexChecked } S;

    Q5ArrayState(Status s): S(s){}

    bool operator==(const Q5ArrayState &X) const {
      return S == X.S;
    }

    bool isUnchecked() const { return S == IndexUnchecked; }
    bool isChecked() const { return S == IndexChecked; }

    static Q5ArrayState getIndexUnchecked(){ return Q5ArrayState(IndexUnchecked); }
    static Q5ArrayState getIndexChecked(){ return Q5ArrayState(IndexChecked); }
  };

  class Q5ArrayChecker : public Checker<check::PreCall> {
  
  public:
    /** Should give information whether an index is checked  */
   void checkBranchCondition(const Stmt *Condition, CheckerContext &C) const;

};
} // End of anonymous namespace

REGISTER_MAP_WITH_PROGRAMSTATE(Q5ArrayMap, SymbolRef, Q5ArrayState)

void Q5ArrayChecker::checkBranchCondition(const Stmt *Condition, CheckerContext &C) const{
}

void ento::registerQ5ArrayChecker(CheckerManager &mgr) {
    mgr.registerChecker<Q5ArrayChecker>();
}
