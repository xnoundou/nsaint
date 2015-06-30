#!/bin/bash

OPT="$LLVM_BIN/opt"
TESTS="$LLVM_HOME/lib/Analysis/saint/stac-example"
RESULT="stac-results"
IRTYPE="s"
PROJECT_NAME="STAC Example"
set -x

rm -rf $RESULT

./ctainthelp.sh -s $TESTS \
  -i $TESTS \
  -o $RESULT -c g -t "$IRTYPE"

./ctainthelp.sh -s $RESULT -o $RESULT -c m -t "$IRTYPE"

./runOpt.sh -o "$OPT" -s -e "saint-table" -t -p "$PROJECT_NAME" -i $RESULT/one.bc 2> $RESULT/analysis-result

