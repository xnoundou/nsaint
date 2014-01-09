#!/bin/bash

OPT=/home/noundou/tools/llvm-3.3.src/build/Release+Asserts/bin/opt
MONGOOSE="/home/noundou/ece750-project/benchmarks/mongoose"
RESULT="mongoose-results"

set -x

./ctainthelp.sh -s $MONGOOSE -i $MONGOOSE -o $RESULT -c b
./ctainthelp.sh -s $RESULT -o $RESULT -c m

./runOpt.sh -o "$OPT" -p "MONGOOSE" -i $RESULT/one.bc 2> $RESULT/analysis-result

