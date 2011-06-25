#!/bin/bash
# foxit reader
# http://get.adobe.com/cn/reader/otherversions/

FOXIT="foxitreader"
FILENAME="$FOXIT.tar.bz2"
LATEST="http://mirrors.foxitsoftware.com/pub/foxit/reader/desktop/linux/1.x/1.1/enu/FoxitReader-1.1.0.tar.bz2"
DOWN_DIR=~/Downloads
OPT_DIR=~/Opt

wget -c -O $FILENAME $LATEST

if [ -f "$FILENAME" ]; then
    mv $FILENAME $DOWN_DIR
fi

tar jxvf "$DOWN_DIR/$FILENAME" -C "$DOWN_DIR/"

if [ ! -d "$OPT_DIR" ]; then
    mkdir $OPT_DIR
fi

if [ -d "$OPT_DIR/$FOXIT" ]; then
    rm -rf "$OPT_DIR/$FOXIT"
fi

mv "$DOWN_DIR/1.1-release" "$OPT_DIR/$FOXIT"
