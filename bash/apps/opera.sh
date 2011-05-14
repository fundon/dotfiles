#!/bin/bash
# opera latest

OPERA="opera"
BASEURL="http://get.opera.com/pub/opera/linux/"
STUFFIX=".i386.linux.tar.bz2"
REVISION=$(curl $BASEURL | tail -n 4 | sed 's/ //g' | awk '/href/ {sub(/^.*href="/,"");sub(/\/.*/, ""); print}')
GETOPERA="$BASEURL$REVISION/"
FILENAME=$(curl $GETOPERA | sed -n '/\.i386\.linux\.tar\.bz2/p'| awk '{gsub(/ +/, ""); sub(/^.*href="/, ""); sub(/">.*/, ""); print}')
LATEST="$GETOPERA$FILENAME"
DOWN_DIR=~/Downloads
OPT_DIR=~/Opt

wget -c $LATEST -o $FILENAME

if [ -f "$FILENAME" ]; then
    mv $FILENAME $DOWN_DIR
fi

tar jxvf "$DOWN_DIR/$FILENAME" -C "$DOWN_DIR/$OPERA"

if [ ! -d "$OPT_DIR" ]; then
    mkdir $OPT_DIR
fi

if [ -f "$OPT_DIR/$OPERA" ]; then
    rm -rf "$OPT_DIR/$OPERA"
fi

mv "$DOWN_DIR/$OPERA" "$OPT_DIR/$OPERA"
