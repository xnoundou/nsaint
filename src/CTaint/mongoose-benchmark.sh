#!/bin/bash

MONGOOSE="/home/noundou/ece750-project/benchmarks/mongoose"
RESULT="mongoose-results"

./ctainthelp.sh -s $MONGOOSE -i $MONGOOSE -o $RESULT -c b
./ctainthelp.sh -s $RESULT -o $RESULT -c m

time ./runOpt.sh -i $RESULT/one.bc 2> $RESULT/analysis-result

