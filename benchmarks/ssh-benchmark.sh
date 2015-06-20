#!/bin/bash

OPT=$HOME/tools/llvm-3.3.src/build/Release+Asserts/bin/opt
ssh="$HOME/ece750-project/benchmarks/ssh"
RESULT="ssh-results"
MODULE=
#MODULE=report

allmodules=(input)

INPUT_INC="-i $ssh \
  	   -i /usr/include/x86_64-linux-gnu \
  	   -i /usr/include \
  	   -i /usr/include/clang/3.0/include "

#input
set -x
./ctainthelp.sh -s $ssh $INPUT_INC -o $RESULT -m "-DSIZE_T_MAX=9999999" -c b
./ctainthelp.sh -s $RESULT -o $RESULT -c m

LOGFILE=$RESULT/analysis-result".$MODULE"

echo "Log file: $LOGFILE"

./runOpt.sh -o "$OPT" -s -p "ssh" -i $RESULT/one.bc 2> "$LOGFILE"

