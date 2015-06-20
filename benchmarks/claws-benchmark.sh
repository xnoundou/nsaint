#!/bin/bash

OPT=$HOME/tools/llvm-3.3.src/build/Release+Asserts/bin/opt
CLAWS="$HOME/ece750-project/benchmarks/claws"
RESULT="claws-results"
IRTYPE="b"

set -x

./ctainthelp.sh -s $CLAWS/src \
  -i $CLAWS/src \
  -i $CLAWS/src/common \
  -i $CLAWS/src/etpan \
  -i $CLAWS/src/gtk \
  -i /usr/include/glib-2.0 \
  -i /usr/lib/x86_64-linux-gnu/glib-2.0/include \
  -o $RESULT -c g -t "$IRTYPE"

./ctainthelp.sh -s $RESULT -o $RESULT -c m -t "$IRTYPE"

./runOpt.sh -o "$OPT" -s -d -p "CLAWS" -i $RESULT/one.bc 2> $RESULT/analysis-result

