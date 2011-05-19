#!/bin/bash
# minitunes -- music player

MINITUNES="minitunes"
SITE="http://flavio.tordini.org/minitunes"
LATEST=$(curl $SITE | sed -n '/minitunes-linux/p' | sed 's/ \|^.*href="\|".*$//g')
DOWN_DIR=~/Downloads
OPT_DIR=~/Opt

FILE="$DOWN_DIR/$MINITUNES.tar.gz"
if [ ! -s "$FILE" ]; then
    wget -c -O "$FILE" $LATEST
fi

tar zxvf "$FILE" -C $DOWN_DIR

if [ ! -d "$OPT_DIR" ]; then
    mkdir $OPT_DIR
fi

mv "$DOWN_DIR/$MINITUNES" "$OPT_DIR/$MINITUNES"
