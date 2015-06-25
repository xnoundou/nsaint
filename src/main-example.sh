#!/bin/bash

OPT="$LLVM_BIN/opt"
TESTS="$LLVM_HOME/lib/Analysis/saint/main-example"
RESULT="main-results"
IRTYPE="s"

set -x

rm -rf $RESULT

./ctainthelp.sh -s $TESTS \
  -i $TESTS \
  -o $RESULT -c g -t "$IRTYPE"

./ctainthelp.sh -s $RESULT -o $RESULT -c m -t "$IRTYPE"

#DEBUGOPT="-debug -debug-only=$DEBUGTYPE"
#DEBUGFLAG="-debug -debug-only=saint-tainted"
#DEBUGFLAG="-debug -debug-only=saint-warnings"
#DEBUGFLAG="-debug -debug-only=saint-summary-table"
#DEBUGFLAG="-debug -debug-only=saint-table"
#DEBUGFLAG="-debug -debug-only=saint-sinks"

./runOpt.sh -o "$OPT" -s -e "saint-table" -t -p "TESTS" -i $RESULT/one.bc 2> $RESULT/analysis-result

