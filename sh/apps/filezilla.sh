#!/bin/bash
# filezilla nightly
# http://filezilla-project.org/nightly.php

FILEZILLA="filezilla"
FILENAME="$FILEZILLA.tar.bz2"
DATE=`date +'%Y-%m-%d'`
YESDATE=`date --date '1 days ago' +'%Y-%m-%d'`
LATEST0="http://filezilla-project.org/nightlies/$DATE/i586-linux-gnu/FileZilla3.tar.bz2"
LATEST1="http://filezilla-project.org/nightlies/$YESDATE/i586-linux-gnu/FileZilla3.tar.bz2"
DOWN_DIR=~/Downloads
OPT_DIR=~/Opt

wget -c -O "$DOWN_DIR/$FILENAME" $LATEST0 || wget -c -O "$DOWN_DIR/$FILENAME" $LATEST1

tar jxvf "$DOWN_DIR/$FILENAME" -C "$DOWN_DIR/"

if [ ! -d "$OPT_DIR" ]; then
    mkdir $OPT_DIR
fi

if [ -d "$OPT_DIR/$FILEZILLA" ]; then
    rm -rf "$OPT_DIR/$FILEZILLA"
fi

mv "$DOWN_DIR/FileZilla3" "$OPT_DIR/$FILEZILLA"
