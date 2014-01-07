#!/bin/bash

CLAWS="/home/noundou/ece750-project/benchmarks/claws"
RESULT="claws-results"

./ctainthelp.sh -s $CLAWS/src \
  -i $CLAWS/src \
  -i $CLAWS/src/common \
  -i $CLAWS/src/etpan \
  -i $CLAWS/src/gtk \
  -i /usr/include/glib-2.0 \
  -i /usr/lib/x86_64-linux-gnu/glib-2.0/include \
  -o $RESULT -c b
./ctainthelp.sh -s $RESULT -o $RESULT -c m

time ./runOpt.sh -i $RESULT/one.bc 2> $RESULT/analysis-result

