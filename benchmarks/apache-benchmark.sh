#!/bin/bash

APACHE="$HOME/ece750-project/benchmarks/httpd-2.4.7"
RESULT="apache-results"

./ctainthelp.sh -s $APACHE/server \
  -i $APACHE/include \
  -i $APACHE/os/unix \
  -i $APACHE/modules/core \
  -i $APACHE/modules/proxy \
  -i /usr/include/apr-1.0 \
  -o $RESULT -c b

TMP=$RESULT/apache-tmp
mkdir $TMP
mv $RESULT/gen_test_char.* $TMP
mv $RESULT/config.* $TMP
./ctainthelp.sh -s $RESULT -o $RESULT -c m
#mv gen_test_char.* $RESULT
#mv config.* $RESULT

./runOpt.sh -i $RESULT/one.bc 2> $RESULT/analysis-result

