#!/bin/bash
# opera latest

OPERA="opera"
#http://get.opera.com/pub/opera/linux
BASEURL="http://ftp.yz.yamagata-u.ac.jp/pub/opera/linux"
STUFFIX=".i386.linux.tar.bz2"
REVISION=$(curl "$BASEURL/" | sed -n '/DIR/p' | tail -n 1 | sed 's/ \|^.*href="\|\/.*$//g')
GETOPERA="$BASEURL/$REVISION"
#FILENAME=$(curl "$GETOPERA/" | sed -n '/\[ *\]/p' | sed -n '/\.i386\.linux\.tar\.bz2/p' | awk '{gsub(/ +/, ""); sub(/^.*href="/, ""); sub(/">.*/, ""); print}')
FILENAME=$(curl "$GETOPERA/" | sed -n '/\[ *\]/p' | sed -n '/\.i386\.linux\.tar\.bz2/p' | sed 's/ \|^.*href="\|">.*$//g')
LATEST="$GETOPERA/$FILENAME"
DOWN_DIR=~/Downloads
OPT_DIR=~/Opt

if [ ! -s "$DOWN_DIR/$FILENAME" ]; then
    wget -c -O "$DOWN_DIR/$FILENAME" $LATEST
fi

tar jxvf "$DOWN_DIR/$FILENAME" -C $DOWN_DIR

if [ ! -d "$OPT_DIR" ]; then
    mkdir $OPT_DIR
fi

if [ -f "$OPT_DIR/$OPERA" ]; then
    rm -rf "$OPT_DIR/$OPERA"
fi

O=$(echo $FILENAME | sed 's/\.tar\.bz2$//g')

mv "$DOWN_DIR/$O" "$OPT_DIR/$OPERA"
