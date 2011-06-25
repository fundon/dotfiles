#!/bin/bash
# charles: web debugging proxy application

FILE="charles.tar.gz"
LATEST="http://www.charlesproxy.com/assets/release/3.5.2/charles.tar.gz"
DOWN_DIR=~/Downloads
OPT_DIR=~/Opt

cd $DOWN_DIR

if [ ! -s "$FILE" ]; then
    curl -O $LATEST
fi

tar zxvf $FILE

if [ ! -d "$OPT_DIR" ]; then
    mkdir $OPT_DIR
fi

mv "$DOWN_DIR/charles" "$OPT_DIR/charles"
