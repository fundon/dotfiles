#!/bin/bash
# memcached
# https://github.com/memcached/memcached
# http://code.google.com/p/memcached/
# deps: aptitude install libevent-dev

# > ./bin/memcached

MEMCACHED="$HOME/develop/lnmp/memcached"
VERSION="1.4.5"
SITE="http://memcached.googlecode.com/files"
LATEST="memcached-$VERSION.tar.gz"
DOWN_DIR="$HOME/Downloads"

[[ ! -d $MEMCACHED/var ]] && mkdir -p $MEMCACHED/var

if [ ! -s "$DOWN_DIR/$LATEST" ]; then
    wget -c -O "$DOWN_DIR/$LATEST" "$SITE/$LATEST"
fi

cd $DOWN_DIR
tar zxvf $LATEST && cd "memcached-$VERSION"
./configure --prefix=$MEMCACHED
wget http://johntech-resource.googlecode.com/files/fix-strict-aliasing.patch
patch memcached.h fix-strict-aliasing.patch
make && make install

## or install latest
# git clone git://github.com/memcached/memcached.git
# cd memcached
# sh autogen.sh
# ./configure --prefix=$MEMCACHED
# make && make install
