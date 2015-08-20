#!/bin/bash

USAGE=$(cat <<EOF
______________________________________________________________________________________________
saint-run-opt.sh is part of SAINT (Simple Taint Analysis Tool)
Copyright (c) 2013-2015 by Xavier NOUMBISSI NOUNDOU (xavier.noumbis@gmail.com)

Usage: $(basename $0) -o <llvm-opt> -i <bc files> [-s|-d|-t] [-e debug_type] -p <project_name>

<llvm-opt>: LLVM 'opt' program path									       
<bc file> : LLVM byte code file to analyse									       
[-s]	  : generates analysis statistics
[-d]	  : generates SAINT debugging information while running
[-t]      : generates SAINT analysis timing information
[-p]      : specifies a name for the project
______________________________________________________________________________________________
EOF
)

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
debugtypeflag=
debugtypeflag=
timingflag=

while getopts 'mfd:to:i:p:se:' OPTION
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
    e)	debugtypeflag=1
      	DEBUGTYPE="$OPTARG"
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

PASSARG="-saint"

if [ "$debugflag" ]; then
  DEBUGOPT="-debug"
elif [ "$debugtypeflag" ]; then
  DEBUGOPT="-debug -debug-only=$DEBUGTYPE"
fi

if [ "$timingflag" ]; then
  TIMING="-time-passes"
fi

set -x

make -f $SAINT_HOME/src/Makefile.saint compile > /dev/null

time $($OPT $STATS -load $LLVM_LIB/LLVMDataStructure.so \
  	    	   -load $LLVM_LIB/saint.so $DEBUGOPT -calltarget-eqtd -memdep "$PASSARG" $TIMING < "$INPUTFILE" > /dev/null)

