#!/bin/bash
# php

PHP="$HOME/develop/lnmp/php"
SITE="http://us2.php.net/distributions"
FILE="php-5.3.6"
LATEST="$FILE.tar.bz2"
DOWN_DIR="$HOME/Downloads"

if [ ! -s "$DOWN_DIR/$LATEST" ]; then
    wget -c -O "$DOWN_DIR/$LATEST" "$SITE/$LATEST"
fi

# libjpeg libpng
# ln -sf /usr/lib/i386-linux-gnu/libjpeg* /usr/lib/
# ln -sf /usr/lib/i386-linux-gnu/libpng* /usr/lib/

cd $DOWN_DIR
tar jxvf $LATEST
cd $FILE
./configure --prefix=$PHP \
--with-config-file-path=$PHP/etc \
--with-config-file-scan-dir=$PHP/etc/conf.d \
--with-mysql=$HOME/develop/lnmp/percona \
--with-pdo-mysql=$HOME/develop/lnmp/percona \
--with-pdo-pgsql=$HOME/develop/lnmp/pgsql \
--with-curl \
--with-pear \
--with-gd \
--with-xpm-dir \
--with-jpeg-dir \
--with-png-dir \
--with-freetype-dir \
--with-zlib \
--with-t1lib \
--with-mcrypt \
--with-mhash \
--with-openssl \
--with-xmlrpc \
--with-xsl \
--with-bz2 \
--with-gettext \
--with-libxml-dir \
--with-readline \
--with-iconv-dir \
--enable-fpm \
--enable-exif \
--enable-wddx \
--enable-bcmath \
--enable-calendar \
--enable-ftp \
--enable-mbstring \
--enable-soap \
--enable-sockets \
--enable-sqlite-utf8 \
--enable-shmop \
--enable-sysvmsg \
--enable-sysvshm \
--enable-shared=max \
--enable-zend-multibyte \
--enable-mod-charset \
--enable-embedded-mysqli \
--enable-libgcc \
--enable-zip \
--enable-gd-native-ttf \
--enable-pcntl

make
make install

# php.ini
cp php.ini-* $PHP/etc/
cp php.ini-development $PHP/etc/php.ini
