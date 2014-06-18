#!/bin/bash

OPT=/home/noundou/tools/llvm-3.3.src/build/Release+Asserts/bin/opt
GNUCASH="/home/noundou/ece750-project/benchmarks/gnucash-2.4.13"
RESULT="gnucash-results"
#MODULE=backend
MODULE=report
SRC=src/$MODULE

allmodules=(backend)

GLIB2=/usr/include/glib-2.0
GLIB2_AMD64=/usr/lib/x86_64-linux-gnu/glib-2.0/include
GTK2_AMD64=/usr/lib/x86_64-linux-gnu/gtk-2.0/include
GNOME_LIB=/usr/include/libgnome-2.0
GNOMEUI_LIB=/usr/include/libgnomeui-2.0
GTK2=/usr/include/gtk-2.0
CAIRO=/usr/include/cairo
PANGO=/usr/include/pango-1.0
GDK_PIXBUF=/usr/include/gdk-pixbuf-2.0
ATK=/usr/include/atk-1.0
BONOBO=/usr/include/libbonobo-2.0
BONOBOUI=/usr/include/libbonoboui-2.0
GNOME_CANVAS=/usr/include/libgnomecanvas-2.0
LIBART=/usr/include/libart-2.0
GNOMEVFS=/usr/include/gnome-vfs-2.0
GCONF2=/usr/include/gconf/2

REPORT_INC="-i $GNUCASH/$SRC/report-gnome \
  -i $GNUCASH/$SRC \
  -i $GNUCASH \
  -i $GNUCASH/src \
  -i $GNUCASH/src/html \
  -i $GNUCASH/src/gnome-utils \
  -i $GNUCASH/src/app-utils \
  -i $GNUCASH/src/core-utils \
  -i $GNUCASH/src/engine \
  -i $GNUCASH/src/libqof/qof \
  -i $GNUCASH/src/report/report-system \
  -i $GLIB2 \
  -i $GNOME_LIB \
  -i $GNOMEUI_LIB \
  -i $GTK2 \
  -i $GTK2_AMD64 \
  -i $CAIRO \
  -i $PANGO \
  -i $GDK_PIXBUF \
  -i $ATK \
  -i $BONOBO \
  -i $BONOBOUI \
  -i $GNOME_CANVAS \
  -i $LIBART \
  -i $GNOMEVFS \
  -i $GCONF2 \
  -i $GLIB2_AMD64"

#report
set -x
./ctainthelp.sh \
  -s $GNUCASH/$SRC/report-gnome $REPORT_INC \
  -o $RESULT -c b
./ctainthelp.sh -s $RESULT -o $RESULT -c m

BACKEND_INC="-i $GNUCASH/$SRC/sql \
  -i $GNUCASH/$SRC \
  -i $GNUCASH \
  -i $GNUCASH/src/engine \
  -i $GNUCASH/src/libqof/qof \
  -i $GLIB2 \
  -i $GLIB2_AMD64"

#backend
#./ctainthelp.sh \
#  -s $GNUCASH/$SRC/sql $BACKEND_INC \
#  -o $RESULT -c b
#./ctainthelp.sh -s $RESULT -o $RESULT -c m

LOGFILE=$RESULT/analysis-result".$MODULE"

echo "Log file: $LOGFILE"

./runOpt.sh -o "$OPT" -p "GNUCASH" -i $RESULT/one.bc 2> "$LOGFILE"

