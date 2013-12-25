#!/bin/bash
# Script to rename file from
# pattern old*.X to new*.X
# Usage: ./thisScript <-n NEW> <-o OLD> <list of files>

USAGE="Usage: $(basename $0) <-s SRC_FOLDER> [-i INC_FOLDER] <-c i|b|p|m> [files]"

if [ $# -lt 4 ]; then
  echo "$USAGE"
  exit 1
fi

sflag=
iflag=
cflag=

while getopts 's:i:c:f:' OPTION
do
  case $OPTION in
    s)	sflag=1
      	srcfolder="$OPTARG"
	;;
    i)	iflag=1
      	incfolder="-I$OPTARG "$incfolder""
	;;
    c)	cflag=1
      	action="$OPTARG"
	echo "action: "$action""
	;;
    ?)	printf "$USAGE\n" >&2
        exit 2
	;;
  esac
done
shift $(($OPTIND - 1))

if [ ! "$cflag" ]; then
  echo "You must specify a valid operation"
  printf "$USAGE\n" >&2
  exit 3
fi

if [ ! "$sflag" ]; then 
  echo "You must specify a source folder"
  exit 4
fi

outfolder="output"
srcfolder=$(echo "$srcfolder"| awk '{gsub(/^ +| +$/,"")}1')
#srcfolder=$(echo "$srcfolder"| awk '{gsub(/ //$/,"")}1')
incfolder=$(echo "$incfolder"| awk '{gsub(/^ +| +$/,"")}1')
MACROS="-D__STDC_LIMIT_MACROS -D__STDC_CONSTANT_MACROS"

logfile="ctainthelp.log"

echo "source folder: "$srcfolder""
echo "include folder: "$incfolder""
echo "log file: "$logfile""

if [ ! -d "$outfolder" ]; then
  mkdir -p "$outfolder"
  echo "Created output folder "$outfolder""
fi

function genByteCode(){
  for cf in $(dir "$srcfolder"/*.c); do
    f=${cf##*/}
    p=${f%*.c}
    echo "clang -emit-llvm "$incfolder" "$cf" -c -g -o "$outfolder"/"$p".bc"
    clang -emit-llvm $incfolder "$cf" -c -g -o "$outfolder"/"$p".bc 2> "$logfile"
  done
}

function genIR(){
  for cf in $(dir "$srcfolder"/*.c); do
    f=${cf##*/}
    p=${f%*.c}
    echo "clang "$MACROS" "$incfolder" -S -emit-llvm "$cf" -g -o "$outfolder"/"$p.s""
    clang "$MACROS" $incfolder -S -emit-llvm "$cf" -g -o "$outfolder"/"$p.s" 2> $logfile
  done
}

function genLLFiles(){
  genIR
  for f in $(dir "$outfolder"/*.bc); do
    llvm-dis "$incfolder" "$outfolder"/"$f" 2> $logfile
  done
}

function mergeBCFiles(){
  echo "llvm-link -o "one.bc" $srcfolder/*.bc"
  llvm-link -o "one.bc" $srcfolder/*.bc 2> $logfile
}

case "$action" in
  i) echo "Generating IR files"
    genIR
    ;;
  b) echo "Generating bytecode files"
    genByteCode
    ;;
  p) echo "Generating human readable bytecode files"
    genLLFiles
    ;;
  m) echo "Merging bytecode files"
    mergeBCFiles
    ;;
  ?) echo "Invalid command given"
    printf "$USAGE\n" >&2
    exit 3
    ;;
esac

