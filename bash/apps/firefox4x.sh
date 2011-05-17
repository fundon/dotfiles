#!/bin/bash
# firefox 4.0.x nightly
# ftp://ftp.mozilla.org/pub/firefox/releases/
# http://ftp.mozilla.org/pub/mozilla.org/firefox/nightly/latest-jaegermonkey/
# multi firefoxs: firefox -profilemanager -no-remote
# firefox -p default -no-remote

FIREFOX="firefox4"
SITE="http://ftp.mozilla.org/pub/mozilla.org/firefox/nightly/latest-firefox-4.0.x-l10n/"
STUFFIX="zh-CN.linux-i686.tar.bz2"
FILENAME=$(curl $SITE | sed -n "/$STUFFIX/p" | sed 's/ \|^.*href="\|">.*$//g')
LATEST="$SITE$FILENAME"
DOWN_DIR=~/Downloads
OPT_DIR=~/Opt

if [ ! -s "$DOWN_DIR/$FIREFOX.tar.bz2" ]; then
    wget -c -O "$DOWN_DIR/$FIREFOX.tar.bz2" $LATEST
fi

tar jxvf "$DOWN_DIR/$FIREFOX.tar.bz2" -C $DOWN_DIR

if [ ! -d "$OPT_DIR" ]; then
    mkdir $OPT_DIR
fi

mv "$DOWN_DIR/firefox" "$OPT_DIR/$FIREFOX"
