#!/bin/bash

OPT=$HOME/tools/llvm-3.3.src/build/Release+Asserts/bin/opt
VLC="$HOME/ece750-project/benchmarks/vlc"
RESULT="vlc-video-results"
MODULE=video_output
IRTYPE="b"

video_output_INC="-i $VLC/src \
  -i $VLC/include "

#video_output
set -x
./ctainthelp.sh -s $VLC/src/$MODULE $video_output_INC -o $RESULT -c g -t "$IRTYPE"
./ctainthelp.sh -s $RESULT -o $RESULT -c m -t "$IRTYPE"

LOGFILE=$RESULT/analysis-result".$MODULE"

echo "Log file: $LOGFILE"

./runOpt.sh -o "$OPT" -s -p "VLC-video_output" -i $RESULT/one.bc 2> "$LOGFILE"

