#!/bin/bash
# chromium daily

CHROME="chrome-linux"
FILENAME="$CHROME.zip"
REVISION=$(curl 'http://build.chromium.org/f/chromium/snapshots/Linux/LATEST')
LATEST="http://build.chromium.org/f/chromium/snapshots/Linux/$REVISION/$FILENAME"
DOWN_DIR=~/Downloads
OPT_DIR=~/opt

wget -c -O $FILENAME $LATEST

if [ -f "$FILENAME" ]; then
    mv $FILENAME $DOWN_DIR
fi

unzip "$DOWN_DIR/$FILENAME" -d $DOWN_DIR

if [ ! -d "$OPT_DIR" ]; then
    mkdir $OPT_DIR
fi

if [ -f "$OPT_DIR/$CHROME" ]; then
    rm -rf "$OPT_DIR/$CHROME"
fi

mv "$DOWN_DIR/$CHROME" "$OPT_DIR/chromium"
