#!/bin/bash

OPT=/home/noundou/tools/llvm-3.3.src/build/Release+Asserts/bin/opt
GZIP="/home/noundou/ece750-project/benchmarks/gzip-1.6"
RESULT="gzip-results"

set -x

./ctainthelp.sh -s $GZIP -i $GZIP -i $GZIP/lib -o $RESULT -c b
./ctainthelp.sh -s $RESULT -o $RESULT -c m

./runOpt.sh -o "$OPT" -p "GZIP" -i $RESULT/one.bc 2> $RESULT/analysis-result

