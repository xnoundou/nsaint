#!/bin/bash
#Run this script from $SAINT_HOME/scripts

#This script configure the build system to generate an executable
#that can be run on different architectures.

USAGE="
       ------------------------------------------------------------------------------
       saint-configure.sh
        @auteur: Dipl.-Inf. Xavier NOUMBISSI NOUNDOU, PhD Candidate
	@email:  xnoundou@gmail.com
       ------------------------------------------------------------------------------
       Usage: $(basename $0)
	[-h] : help
	[-j <number_of_jobs>] : specifies the number of jobs for
	                        running 'make'
	
	EXAMPLES:
	---------
	 1. saint-configure.sh -j 2
	 2. saint-configure.sh

	saint-configure.sh is part of SAINT (Simple Static Taint Analysis Tool)
	Copyright (c) 2013-2015 by Xavier NOUMBISSI NOUNDOU (xavier.noumbis@gmail.com)

	https://sites.google.com/site/xaviernoumbis
       -------------------------------------------------------------------------------"

number_of_jobs=1

while getopts 'hj:' OPTION
do
  case $OPTION in
    j)	number_of_jobs="$OPTARG"
	;;
    h)	echo "$USAGE" >&2
        exit 1
	;;
    ?)	echo "$USAGE" >&2
        exit 2
	;;
  esac
done
shift $(($OPTIND - 1))

cd $LLVM_HOME/lib/Analysis

if [ ! -h $LLVM_HOME/lib/Analysis/saint ]; then
  echo "[SAINT]: creates the symbolic link: $LLVM_HOME/lib/Analysis/saint"
  sleep 3s
  ln -s $SAINT_HOME/src $LLVM_HOME/lib/Analysis/saint
fi

if [ ! -h $LLVM_HOME/include/dsa ]; then
  echo "[SAINT]: creates the symbolic link: $LLVM_HOME/include/dsa"
  sleep 3s
  ln -s $POOLALLOC/include/dsa $LLVM_HOME/include/dsa
fi

cd $POOLALLOC

echo "[SAINT]: configures poolalloc located at: $POOLALLOC"
sleep 5s
./configure --prefix=$LLVM_HOME/build/Release+Asserts \
  --with-llvmsrc=$LLVM_HOME \
  --with-llvmobj=$LLVM_HOME/build

echo "[SAINT]: compiles poolalloc located at: $POOLALLOC"
sleep 5s
make

echo "[SAINT]: installs poolalloc libraries"
sleep 5s
make install

if [ ! -d $LLVM_HOME/build ]; then
  echo "[SAINT]: creates the folder: $LLVM_HOME/build"
  sleep 3s
  mkdir $LLVM_HOME/build
fi

cd $LLVM_HOME
./configure --prefix="$LLVM_HOME" \
		CC=/usr/bin/gcc \
		CXX=/usr/bin/g++ \
		--enable-assertions \
		--enable-debug-runtime \
		--enable-targets='all'

cd $LLVM_HOME/build

echo "[SAINT]: compiling llvm with $number_of_jobs jobs"
sleep 3s
make -j$number_of_jobs
		
