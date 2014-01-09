#!/bin/bash

OPT=/home/noundou/tools/llvm-3.3.src/build/Release+Asserts/bin/opt
CLAM="/home/noundou/ece750-project/benchmarks/clam"
RESULT="clam-results"
SRC=clamd

set -x

./ctainthelp.sh -s $CLAM/$SRC \
  -i $CLAM/$SRC \
  -i $CLAM \
  -i $CLAM/libclamav \
  -i $CLAM/libclamav/jsparse \
  -i $CLAM/libclamav/7z \
  -i $CLAM/libclamav/nsis \
  -i $CLAM/libclamav/regex \
  -i $CLAM/libclamav/tomsfastmath \
  -i /usr/include \
  -o $RESULT -c b
./ctainthelp.sh -s $RESULT -o $RESULT -c m

./runOpt.sh -o "$OPT" -p "CLAM" -i $RESULT/one.bc 2> $RESULT/analysis-result

