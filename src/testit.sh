#!/bin/bash

OPT=/home/noundou/tools/llvm-3.3.src/build/Release+Asserts/bin/opt
TESTS="/home/noundou/tools/llvm-3.3.src/lib/Analysis/waint/tests"
RESULT="results"
IRTYPE="i"

set -x

./ctainthelp.sh -s $TESTS \
  -i $TESTS \
  -o $RESULT -c g -t "$IRTYPE"

./ctainthelp.sh -s $RESULT -o $RESULT -c m -t "$IRTYPE"

./runOpt.sh -o "$OPT" -s -d -t -p "TESTS" -i $RESULT/one.bc 2> $RESULT/analysis-result

