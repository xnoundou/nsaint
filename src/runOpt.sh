#!/bin/bash

USAGE="Usage: $(basename $0) <-e llvm-opt> <-i bc files> [-s|-d|-t|-p project]"

if [ $# -lt 1 ]; then
  echo "$USAGE"
  exit 1
fi

moduleflag=
fileflag=
projectflag=
optflag=
statsflag=
debugflag=
timingflag=

while getopts 'mfdto:i:p:s' OPTION
do
  case $OPTION in
    m)	moduleflag=1
	;;
    d)	debugflag=1
        ;;
    t)	timingflag=1
        ;;
    s)	statsflag=1
	;;
    o)	optflag=1
      	OPT="$OPTARG"
	;;
    p)	projectflag=1
	PROJECT="$OPTARG"
	;;
    i)	fileflag=1
      	INPUTFILE="$OPTARG"
	echo "Input file: $INPUTFILE"
	;;
    ?)	echo "$USAGE" >&2
        exit 2
	;;
  esac
done
shift $(($OPTIND - 1))

if [ ! "$optflag" ]; then
  echo "You must specify which llvm-opt to execute."
  echo "$USAGE"
  exit 3
else
  echo "Executing llvm-opt: $OPT"
fi

if [ ! "$fileflag" ]; then
  echo "A .bc file must be given to run the analysis"
  echo "$USAGE"
  exit 4
fi

if [ "$projectflag" ]; then
  echo "Current project: $PROJECT"
else
  PROJECT="default"
  echo "No project name given. Defaults to: $PROJECT"
fi

if [ "$statsflag" ]; then
  STATS="-stats"
fi

PASSARG="-waint"

if [ "$debugflag" ]; then
  #DEBUGFLAG="-debug"
  DEBUGFLAG="-debug -debug-only=waint-warnings"
  #DEBUGFLAG="-debug -debug-only=waint-summary-table"
  #DEBUGFLAG="-debug -debug-only=waint-summary"
  #DEBUGFLAG="-debug -debug-only=waint-sinks"
fi

if [ "$timingflag" ]; then
  TIMING="-time-passes"
fi

set -x

make -f Makefile.waint compile > /dev/null

BOOST_LIB=/home/noundou/tools/boost/stage/lib

time $($OPT $STATS -load $LLVM_LIB/LLVMDataStructure.so \
  		   -load $BOOST_LIB/libboost_regex.so \
  	    	   -load $LLVM_LIB/waint.so $DEBUGFLAG -calltarget-eqtd -memdep "$PASSARG" $TIMING < "$INPUTFILE" > /dev/null)

