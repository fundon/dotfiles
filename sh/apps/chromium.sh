#!/bin/bash
# chromium daily

CHROME="chrome-linux"
FILENAME="$CHROME.zip"
REVISION=$(curl 'http://build.chromium.org/f/chromium/snapshots/Linux/LATEST')
LATEST="http://build.chromium.org/f/chromium/snapshots/Linux/$REVISION/$FILENAME"
DOWN_DIR=~/Downloads
OPT_DIR=~/Opt

wget -c -O "$DOWN_DIR/$FILENAME" $LATEST

unzip "$DOWN_DIR/$FILENAME" -d $DOWN_DIR

if [ ! -d "$OPT_DIR" ]; then
    mkdir $OPT_DIR
fi

if [ -d "$OPT_DIR/chromium" ]; then
    rm -rf "$OPT_DIR/chromium"
fi

mv "$DOWN_DIR/$CHROME" "$OPT_DIR/chromium"
