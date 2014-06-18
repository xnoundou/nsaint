#!/bin/bash

OPT=$HOME/tools/llvm-3.3.src/build/Release+Asserts/bin/opt
APACHE="/home/noundou/ece750-project/benchmarks/httpd-2.4.7"
RESULT="apache-results"
IRTYPE="b"

set -x

./ctainthelp.sh -s $APACHE/server \
  -i $APACHE \
  -i $APACHE/include \
  -i $APACHE/os/unix \
  -i $APACHE/modules/core \
  -i $APACHE/modules/proxy \
  -i /usr/include/apr-1.0 \
  -o $RESULT -c m -t "$IRTYPE"

./ctainthelp.sh -s $APACHE/server -i $APACHE -i $APACHE/include -o $RESULT -c g -t "$IRTYPE"
./ctainthelp.sh -s $RESULT -i $APACHE -i $APACHE/include -o $RESULT -c m -t "$IRTYPE"

./runOpt.sh -o "$OPT" -s -d -t -p "APACHE" -i $RESULT/one.bc 2> $RESULT/analysis-result

