#!/bin/bash

OPT=$LLVM_BIN/opt
OPENSSL101F="$HOME/tools-saint/openssl-1.0.1f"
RESULTS="results"
IRTYPE="i"

set -x

rm -rf $RESULTS

$SAINT_BIN/saint-gen-ir.sh -s $OPENSSL101F/ssl \
  -i $OPENSSL101F \
  -i $OPENSSL101F/ssl \
  -i $OPENSSL101F/include \
  -i $OPENSSL101F/crypto \
  -o $RESULTS -c g -t "$IRTYPE"

$SAINT_BIN/saint-gen-ir.sh -s $RESULTS -o $RESULTS -c m -t "$IRTYPE"

$SAINT_BIN/saint-run-opt.sh -o "$OPT" -s -e saint-table -t -p "OPENSSL101F" -i $RESULTS/one.bc 2> $RESULTS/analysis-result

