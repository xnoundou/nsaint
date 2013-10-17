#!/bin/bash
# Script to rename file from
# pattern old*.X to new*.X
# Usage: ./thisScript <-n NEW> <-o OLD> <list of files>

USAGE="Usage: $(basename $0) <-m|-f> <-i inputfile.bc>\n"

if [ $# -lt 1 ]; then
  echo "$USAGE"
  exit 1
fi

moduleflag=
functionflag=
fileflag=

while getopts 'mfi:' OPTION
do
  case $OPTION in
    m)	modeflag=1
	;;
    f)	functionflag=1
	;;
    i)	fileflag=1
      	INPUTFILE="$OPTARG"
	;;
    ?)	printf "$USAGE" >&2
        exit 2
	;;
  esac
done
shift $(($OPTIND - 1))

function run_cmd(){
  CMD="$1"
  echo "$CMD"
  eval "$CMD"
}

if [ ! "$fileflag" ]; then
  echo "A .bc file must be given to run the analysis"
  echo "$USAGE"
  exit 2
fi

if [ "$moduleflag" ]; then
  PASSARG="-ctaintmod"
elif [ "$functionflag" ]; then
  PASSARG="-ctaintproc"
fi

CMD="opt -load $LLVM_LIB/CTaint.so "$PASSARG" < "$INPUTFILE" > /dev/null"

run_cmd "$CMD"

