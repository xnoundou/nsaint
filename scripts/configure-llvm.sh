#!/bin/bash
#Run this script from LLVM_SRC/build

../configure --prefix="$HOME/tools/llvm-3.3.src" \
		CC=/usr/bin/gcc \
		CXX=/usr/bin/g++ \
		--enable-assertions \
		--enable-debug-runtime \
		--enable-targets='x86, x86_64' \
		
