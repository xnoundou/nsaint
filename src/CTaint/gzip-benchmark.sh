#!/bin/bash

GZIP="/home/noundou/ece750-project/benchmarks/gzip-1.6"
RESULT="gzip-results"

./ctainthelp.sh -s $GZIP -i $GZIP -i $GZIP/lib -o $RESULT -c b
./ctainthelp.sh -s $RESULT -o $RESULT -c m

./runOpt.sh -i $RESULT/one.bc 2> $RESULT/analysis-result

