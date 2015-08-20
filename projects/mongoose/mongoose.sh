#!/bin/bash

OPT=$LLVM_BIN/opt
MONGOOSE="$(pwd)"
RESULTS="results"
IRTYPE="b"

set -x

rm -rf $RESULTS

$SAINT_BIN/saint-gen-ir.sh -s $MONGOOSE -i $MONGOOSE -o $RESULTS -c g -t "$IRTYPE"
$SAINT_BIN/saint-gen-ir.sh -s $RESULTS -o $RESULTS -c m -t "$IRTYPE"

$SAINT_BIN/saint-run-opt.sh -o "$OPT" -s -e "saint-table" -t -p "MONGOOSE" -i $RESULTS/one.bc 2> $RESULTS/analysis-result

