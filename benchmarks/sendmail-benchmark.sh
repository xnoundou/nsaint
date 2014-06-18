#!/bin/bash

OPT=$HOME/tools/llvm-3.3.src/build/Release+Asserts/bin/opt
SENDMAIL="$HOME/ece750-project/benchmarks/sendmail-8.14.7"
RESULT="sendmail-results"
IRTYPE="b"

set -x

./ctainthelp.sh -s $SENDMAIL/sendmail \
  -i $SENDMAIL/sendmail \
  -i $SENDMAIL/include \
  -i $SENDMAIL/obj.Linux.3.2.0-4-amd64.x86_64/sendmail \
  -o $RESULT -c g -t "$IRTYPE"

./ctainthelp.sh -s $RESULT -o $RESULT -c m -t "$IRTYPE"

./runOpt.sh -o "$OPT" -s -d -p "SENDMAIL" -i $RESULT/one.bc 2> $RESULT/analysis-result

