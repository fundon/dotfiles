#!/bin/bash
# nginx
# aptitude install libpcre3-dev build-essential libssl-dev
# > sudo ./sbin/nginx

NGINX="$HOME/develop/lnmp/nginx"
SITE="http://nginx.org/download"
LATEST=$(curl "$SITE/" | sed -n '/\.tar\.gz"/p' | sed '$!d' | sed 's/ \|^.*href="\|".*$//g')
DOWN_DIR=~/Downloads

if [ ! -s "$DOWN_DIR/$LATEST" ]; then
    wget -c -O "$DOWN_DIR/$LATEST" "$SITE/$LATEST"
fi

cd $DOWN_DIR
tar zxvf $LATEST
cd nginx-*
./configure --prefix=$NGINX --with-http_ssl_module
make && make install
