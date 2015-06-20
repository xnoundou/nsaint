#!/bin/bash

MILTER="$HOME/ece750-project/benchmarks/milter-manager-1.5.3"
RESULT="milter-results"
SRC=milter/core
#SRC=core

./ctainthelp.sh \
  -s $MILTER/$SRC \
  -m "-DMILTER_LOG_DOMAIN=\""libmilter"\"" \
  -i $MILTER/$SRC \
  -i $MILTER \
  -i $MILTER/client \
  -i $MILTER/manager \
  -i $MILTER/server \
  -i $MILTER/src \
  -i /usr/lib/ruby/1.8/x86_64-linux \
  -i /usr/include/glib-2.0 \
  -i /usr/lib/x86_64-linux-gnu/glib-2.0/include \
  -o $RESULT -c b
./ctainthelp.sh -s $RESULT -o $RESULT -c m

time ./runOpt.sh -i $RESULT/one.bc 2> $RESULT/analysis-result

