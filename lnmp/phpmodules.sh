#!/bin/bash
# php modules

PHP="$HOME/develop/lnmp/php"
DOWN_DIR="$HOME/Downloads"

if [ ! -d "$PHP/etc/conf.d" ]; then
    mkdir -p "$PHP/etc/conf.d"
fi

# suhosin
suhosin="suhosin-0.9.32.1"
suhosin_d="$suhosin.tar.gz"
suhosin_latest="http://download.suhosin.org/$suhosin"
if [ ! -s "$DOWN_DIR/$suhosin_d" ]; then
    wget -c -O "$DOWN_DIR/$suhosin_d" "$suhosin_latest"
fi
cd $DOWN_DIR
tar zxvf $suhosin_d
cd $suhosin
$PHP/bin/phpize -clean
./configure --with-php-config=$PHP/bin/php-config
make && make install
echo -e ";Suhosin Extension\nextension = suhosin.so" > $PHP/etc/conf.d/suhosin.ini

# APC
pecl install apc
echo -e ";APC extension\nextension = apc.so" > $PHP/etc/conf.d/apc.ini

# memcache
pecl install memcache
echo -e ";memcache extension\nextension = memcache.so" > $PHP/etc/conf.d/memcache.ini
