#!/bin/bash
# Script to rename file from
# pattern old*.X to new*.X
# Usage: ./thisScript <-s SRC_FOLDER> [-o OUT_FOLDER] [-m MACROS] [-i INC_FOLDER] <-c i|b|p|m> [files]

#USAGE="Usage: $(basename $0) <-s SRC_FOLDER> [-o OUT_FOLDER] [-m MACROS] [-i INC_FOLDER] <-c i|b|p|m> [files]"

USAGE=$(cat <<EOF
______________________________________________________________________________________
saint-gen-ir.sh is part of SAINT (Simple Taint Analysis Tool)
Copyright (c) 2013-2015 by Xavier NOUMBISSI NOUNDOU (xavier.noumbis@gmail.com)

Usage: $(basename $0) -s <source_folder> -c <actions> -t [file_type] [options] [files]
										       
<actions>:									       
	    g | Generates LLVM IR files(.s)					       
	    m | Merges input files							       
<file_type>:									       
	    b | Generates LLVM IR bytecode files (.bc)				       
	    i | Generates LLVM IR text files (.s)					       
	    l | Generates LLVM IR text files (.ll)					       
[options]:									       
	   -i | Specifies an include folder					       
	   -o | Specifies an output folder.					       
_____________________________________________________________________________________
EOF
)

if [ $# -lt 4 ]; then
  echo "$USAGE"
  exit 1
fi

sflag=
iflag=
cmdflag=
oflag=
mflag=
typeflag=

while getopts 's:o:m:i:c:f:t:' OPTION
do
  case $OPTION in
    s)	sflag=1
      	srcfolder="$OPTARG"
	;;
    o)	oflag=1
      	outfolder="$OPTARG"
	;;
    m)	mflag=1
      	inmacro="$OPTARG"
	;;
    i)	iflag=1
      	incfolder="-I$OPTARG "$incfolder""
	;;
    c)	cmdflag=1
      	action="$OPTARG"
	echo "action: "$action""
	;;
    t)	typeflag=1
        filetype="$OPTARG"
	;;
    ?)	printf "$USAGE\n" >&2
        exit 2
	;;
  esac
done
shift $(($OPTIND - 1))

if [ ! "$typeflag" ]; then
  echo "You must specify a file type"
  exit 3
fi

if [ "$cmdflag" ]; then
  if [[ "$action" -ne "m" || "$action" -ne "g" ]]; then
    echo "You have to specify a valid action"
    exit 5 
  fi
else
  echo "You have to specify a valid operation"
  printf "$USAGE\n" >&2
  exit 3
fi

if [ ! "$sflag" ]; then 
  echo "You have to specify a source folder"
  exit 4
fi

if [ "$mflag" ]; then 
  inmacro=$(sed 's/\"/\"\\"/g' <<< $inmacro)
  echo "MACRO from user: $inmacro"
fi

if [ ! "$oflag" ]; then
  outfolder="output"
fi

srcfolder=$(echo "$srcfolder"| awk '{gsub(/^ +| +$/,"")}1')
incfolder=$(echo "$incfolder"| awk '{gsub(/^ +| +$/,"")}1')
MACROS="-D__STDC_LIMIT_MACROS -D__STDC_CONSTANT_MACROS"

echo "source folder: "$srcfolder""
echo "include folder: "$incfolder""
echo "output folder: "$outfolder""

if [ ! -d "$outfolder" ]; then
  mkdir -p "$outfolder"
  echo "Created output folder "$outfolder""
fi

appendlogfile="saint-gen-ir.log"
logfile="$outfolder/$appendlogfile"

if [ -f "$logfile" ]; then
  ID=$(date +%Y-%m-%d-%T)
  mv $logfile "$outfolder/"$ID"_$appendlogfile"
fi

echo "log file: $logfile"

function genByteCode(){
  for cf in $(dir "$srcfolder"/*.c); do
    f=${cf##*/}
    p=${f%*.c}
    echo "clang -emit-llvm "$inmacro" "$incfolder" "$cf" -c -g -o "$outfolder"/"$p".bc"
    clang -emit-llvm "$inmacro" $incfolder "$cf" -c -g -o "$outfolder"/"$p".bc 2>> "$logfile"
  done
}

function genIR(){
  for cf in $(dir "$srcfolder"/*.c); do
    f=${cf##*/}
    p=${f%*.c}
    echo "clang "$MACROS" "$inmacro" "$incfolder" -S -emit-llvm "$cf" -g -o "$outfolder"/"$p.s""
    clang "$MACROS" "$inmacro" $incfolder -S -emit-llvm "$cf" -g -o "$outfolder"/"$p.s" 2>> $logfile
  done
}

function genLLFiles(){
  genIR
  for f in $(dir "$outfolder"/*.bc); do
    llvm-dis "$incfolder" "$outfolder"/"$f" 2>> $logfile
  done
}

function mergeBCFiles(){
  if [ "$filetype" == "b" ]; then
    llvm-link -o "$outfolder/one.bc" $srcfolder/*.bc 2>> $logfile
  else
    llvm-link -o "$outfolder/one.bc" $srcfolder/*.s 2>> $logfile
  fi
}

function generateIRFiles(){
  if [ "$filetype" == "i" ]; then
    echo "(.s)" 
    genIR
  elif [ "$filetype" == "b" ]; then
    echo "(.bc)"
    genByteCode
  else
    echo "(.l)"
    genLLFiles
  fi
}

case "$action" in
  g) printf "Generating IR files: "
    generateIRFiles
    ;;
  m) echo "Merging bytecode files"
    mergeBCFiles
    ;;
  ?) echo "Invalid command given"
    printf "$USAGE\n" >&2
    exit 3
    ;;
esac

