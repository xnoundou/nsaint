#!/bin/bash

OPT=$HOME/tools/llvm-3.3.src/build/Release+Asserts/bin/opt
VLC="$HOME/ece750-project/benchmarks/vlc"
RESULT="vlc-results"
MODULE=network

network_INC="-i $VLC/src \
  -i $VLC/include "

#network
set -x
./ctainthelp.sh \
  -s $VLC/src/$MODULE \
  $network_INC \
  -o $RESULT -c b
./ctainthelp.sh -s $RESULT -o $RESULT -c m

LOGFILE=$RESULT/analysis-result".$MODULE"

echo "Log file: $LOGFILE"

./runOpt.sh -o "$OPT" -s -p "VLC-network" -i $RESULT/one.bc 2> "$LOGFILE"

