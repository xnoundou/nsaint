#!/bin/bash

FILE="$1"

if [ "clean" == "$1" ]; then
  echo "cleaning .pdf files"
  rm cfg.*.pdf
  exit 1
fi

PREFIX=${FILE%*.s}
opt -dot-cfg < "$FILE"

for f in $(dir *.dot); do
  CFGPREFIX=${f%*.dot}
  echo "Processes $f to $CFGPREFIX.pdf"
  dot -Tpdf -o"$CFGPREFIX.pdf" "$f"
  #rm "$CFGPREFIX.dot"
done

