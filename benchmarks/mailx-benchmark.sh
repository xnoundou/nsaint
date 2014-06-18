#!/bin/bash

OPT=$HOME/tools/llvm-3.3.src/build/Release+Asserts/bin/opt
MAILX="$HOME/ece750-project/benchmarks/mailx-12.4"
RESULT="mailx-results"
IRTYPE="b"

set -x

./ctainthelp.sh -s $MAILX \
  -i $MAILX \
  -o $RESULT -c g -t "$IRTYPE"

./ctainthelp.sh -s $RESULT -o $RESULT -c m -t "$IRTYPE"

./runOpt.sh -o "$OPT" -s -d -p "MAILX" -i $RESULT/one.bc 2> $RESULT/analysis-result

