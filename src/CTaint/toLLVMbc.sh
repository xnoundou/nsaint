#!/bin/bash

INFOLDER="#1"

for f in $(dir "$INFOLDER/*.c"); do
  clang -emit-llvm "$f" -c
done
