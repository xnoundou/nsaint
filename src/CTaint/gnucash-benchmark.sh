#!/bin/bash

GNUCASH="/home/noundou/ece750-project/benchmarks/gnucash-2.4.13"
RESULT="gnucash-results"

./ctainthelp.sh -s $GNUCASH/src -i $GNUCASH/src -o $RESULT -c b
./ctainthelp.sh -s $RESULT -o $RESULT -c m

./runOpt.sh -i $RESULT/one.bc 2> $RESULT/analysis-result

