#!/bin/bash

#We assume the first argument is in the form file.c
FILE="$1"
PRE=${FILE%*.c}

LLVM_BUILD="$TOOLS/llvm-3.3.src/build"

#LLVM_INC="-I. -I${LLVM_HOME}/include"
LLVM_INC="-I. -I${LLVM_HOME}/include \
	 -I/home/noundou/ece750-project/benchmarks/gzip-1.6\
	 -I/home/noundou/ece750-project/benchmarks/gzip-1.6/lib"

MACROS="-D __STDC_LIMIT_MACROS -D__STDC_CONSTANT_MACROS"



#Generate LLVM IR 
#Generate LLVM bytecode file (.bc) 
clang -emit-llvm "$FILE" -c -o "$PRE.bc"
opt -mem2reg "$PRE.bc" -f -o "$PRE.opt.bc"
#clang "$MACROS" "$LLVM_INC" -S -emit-llvm "$PRE.opt.bc"
llvm-dis "$PRE.opt.bc"
