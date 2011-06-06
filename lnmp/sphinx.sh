#!/bin/bash
# sphinx

sphinx="$HOME/develop/lnmp/sphinx"
SITE="http://sphinxsearch.com/files"
VERSION="2.0.1-beta"
FILE="sphinx-$VERSION"
LATEST="$FILE.tar.gz"
DOWN_DIR="$HOME/Downloads"

if [ ! -s "$DOWN_DIR/$LATEST" ]; then
    wget -c -O "$DOWN_DIR/$LATEST" "$SITE/$LATEST"
fi

cd $DOWN_DIR
tar zxvf $LATEST && cd $FILE
./configure --prefix=$sphinx --with-mysql --with-pgsql
make && make install
