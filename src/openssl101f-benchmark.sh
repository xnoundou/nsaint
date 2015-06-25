#!/bin/bash

OPT=$LLVM_BIN/opt
OPENSSL101F="$HOME/tools-saint/openssl-1.0.1f"
RESULT="openssl101f-results"
IRTYPE="i"

set -x

rm -rf $RESULT

./ctainthelp.sh -s $OPENSSL101F/ssl \
  -i $OPENSSL101F \
  -i $OPENSSL101F/ssl \
  -i $OPENSSL101F/include \
  -i $OPENSSL101F/crypto \
  -o $RESULT -c g -t "$IRTYPE"

./ctainthelp.sh -s $RESULT -o $RESULT -c m -t "$IRTYPE"

./runOpt.sh -o "$OPT" -s -d -t -p "OPENSSL101F" -i $RESULT/one.bc 2> $RESULT/analysis-result

