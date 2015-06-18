#!/bin/bash

OPT="$LLVM_TOOLS/opt"
TESTS="$LLVM_HOME/lib/Analysis/waint/tests"
RESULT="results"
IRTYPE="s"

set -x

./ctainthelp.sh -s $TESTS \
  -i $TESTS \
  -o $RESULT -c g -t "$IRTYPE"

./ctainthelp.sh -s $RESULT -o $RESULT -c m -t "$IRTYPE"

./runOpt.sh -o "$OPT" -s -d -t -p "TESTS" -i $RESULT/one.bc 2> $RESULT/analysis-result

