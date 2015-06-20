#!/bin/bash

OPT=$HOME/tools/llvm-3.3.src/build/Release+Asserts/bin/opt
VLC="$HOME/ece750-project/benchmarks/vlc"
RESULT="vlc-input"
MODULE=input
IRTYPE="b"

allmodules=(input)

#INPUT_INC="-i $VLC/src \
INPUT_INC="-i /usr/include \
  -i /usr/include/x86_64-linux-gnu \
  -i $VLC/include \
  -i $VLC/compat "

#input
LOGFILE=$RESULT/analysis-result".$MODULE"

set -x
./ctainthelp.sh -s $VLC/src/$MODULE $INPUT_INC -o $RESULT -c g -t "$IRTYPE"
./ctainthelp.sh -s $RESULT -o $RESULT -c m -t "$IRTYPE"


echo "Log file: $LOGFILE"

./runOpt.sh -o "$OPT" -s -d -p "VLC-input" -i $RESULT/one.bc 2> "$LOGFILE"

