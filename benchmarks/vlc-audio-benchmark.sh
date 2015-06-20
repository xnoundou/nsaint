#!/bin/bash

OPT=$HOME/tools/llvm-3.3.src/build/Release+Asserts/bin/opt
VLC="$HOME/ece750-project/benchmarks/vlc"
RESULT="vlc-audio-results"
MODULE=audio_output

audio_output_INC="-i $VLC/src \
  -i $VLC/include "

#audio_output
set -x
./ctainthelp.sh \
  -s $VLC/src/$MODULE \
  $audio_output_INC \
  -o $RESULT -c b
./ctainthelp.sh -s $RESULT -o $RESULT -c m

LOGFILE=$RESULT/analysis-result".$MODULE"

echo "Log file: $LOGFILE"

./runOpt.sh -o "$OPT" -s -p "VLC-audio_output" -i $RESULT/one.bc 2> "$LOGFILE"

