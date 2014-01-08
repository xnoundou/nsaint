#!/bin/bash

VLC="/home/noundou/ece750-project/benchmarks/vlc"
RESULT="vlc-results"
MODULE=input
#MODULE=report

allmodules=(input)

INPUT_INC="-i $VLC/src \
  -i $VLC/include "

#input
./ctainthelp.sh \
  -s $VLC/src/$MODULE \
  $INPUT_INC \
  -o $RESULT -c b
./ctainthelp.sh -s $RESULT -o $RESULT -c m

LOGFILE=$RESULT/analysis-result".$MODULE"

echo "Log file: $LOGFILE"

time ./runOpt.sh -i $RESULT/one.bc 2> "$LOGFILE"

