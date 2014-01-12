#!/bin/bash

OPT=/home/noundou/tools/llvm-3.3.src/build/Release+Asserts/bin/opt
VLC="/home/noundou/ece750-project/benchmarks/vlc"
RESULT="vlc-results"
MODULE=input
IRTYPE="b"

allmodules=(input)

INPUT_INC="-i $VLC/src \
  -i $VLC/include "

#input
set -x
./ctainthelp.sh -s $VLC/src/$MODULE $INPUT_INC -o $RESULT -c g -t "$IRTYPE"
./ctainthelp.sh -s $RESULT -o $RESULT -c m -t "$IRTYPE"

LOGFILE=$RESULT/analysis-result".$MODULE"

echo "Log file: $LOGFILE"

./runOpt.sh -o "$OPT" -s -p "VLC-input" -i $RESULT/one.bc 2> "$LOGFILE"

