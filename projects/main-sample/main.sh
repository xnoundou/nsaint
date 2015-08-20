#!/bin/bash

OPT="$LLVM_BIN/opt"
TESTS="$(pwd)"
RESULTS="results"
IRTYPE="s"
PROJECT_NAME="MAIN"
set -x

rm -rf $RESULTS

$SAINT_BIN/saint-gen-ir.sh -s $TESTS \
  -i $TESTS \
  -o $RESULTS -c g -t "$IRTYPE"

$SAINT_BIN/saint-gen-ir.sh -s $RESULTS -o $RESULTS -c m -t "$IRTYPE"

$SAINT_BIN/saint-run-opt.sh -o "$OPT" -s -e "saint-table" -t -p "$PROJECT_NAME" -i $RESULTS/one.bc 2> $RESULTS/analysis-result

