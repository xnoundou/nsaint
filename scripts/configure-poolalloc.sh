#!/bin/bash

./configure --prefix=$LLVM_HOME/build/Release+Asserts \
  --with-llvmsrc=$LLVM_HOME \
  --with-llvmobj=$LLVM_HOME/build
