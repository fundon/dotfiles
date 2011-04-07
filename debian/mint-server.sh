#!/bin/bash

if [ $(id -u) != 0 ]; then
	echo 'You must be a root user.'
	exit 1
fi

# Download DIR $HOME/Downloads/lnmp
Download_Dir=$HOME/Downloads/lnmp
# Install DIR  $HOME/develop/LNMP
Install_Dir=$HOME/develop/LNMP

# nginx-0.9.5
wget -c http://nginx.org/download/nginx-0.9.5.tar.gz
tar zxvf nginx-0.9.5.tar.gz && cd nginx-*
./configure --prefix=${Install_Dir}/nginx --with-http_ssl_module --with-http_stub_status_module --user=www-data --group=www-data
make && make install
#wget -c wget https://library.linode.com/web-servers/nginx/installation/reference/init-deb.sh -o ${Install_Dir}/init/nginx.sh
${Install_Dir}/init/nginx start

cd ${Download_Dir}

# percona (mysql)
groupadd mysql
useradd -r -g mysql mysql
wget -c http://www.percona.com/redir/downloads/Percona-Server-5.1/Percona-Server-5.1.55-12.6/source/Percona-Server.tar.gz
tar zxvf Percona-Server.tar.gz && cd Percona-Server
./configure --prefix=$HOME/develop/LNMP/percona --datadir=$HOME/develop/LNMP/data/percona --with-mysqld-user=mysql --with-extra-charsets=complex --with-charset=utf8 --with-collation=utf8_general_ci --without-plugin-innobase --with-plugin-ndb --with-plugins=innodb_plugin,myisam,partition --with-ssl --enable-assembler --enable-shared --enable-local-infile --with-big-tables
make && make install
mv $HOME/develop/LNMP/data/percona/mysql $HOME/develop/LNMP/percona/share
$HOME/develop/LNMP/percona/bin/mysql_install_db --datadir=/home/cfddream/develop/LNMP/data/percona --basedir=/home/cfddream/develop/LNMP/percona --defaults-file=/home/cfddream/develop/LNMP/percona/my.cnf --user=mysql
#$HOME/develop/LNMP/percona/bin//mysqld_safe --defaults-file=/home/cfddream/develop/LNMP/percona/my.cnf --user=mysql &
${Install_Dir}/init/mysql start
ln -sf /tmp/mysql.sock /var/run/mysqld/mysqld.sock
${Install_Dir}/percona/bin/mysql_secure_installation

cd ${Download_Dir}

# php-5.3.5
wget -c http://us2.php.net/distributions/php-5.3.5.tar.bz2
tar jxvf php-5.3.5.tar.bz2 && cd php-*
./configure --prefix=${Install_Dir}/php --with-config-file-path=${Install_Dir}/php/etc --with-config-file-scan-dir=${Install_Dir}/php/etc/conf.d --with-curl --with-pear --with-gd --with-jpeg-dir --with-png-dir --with-zlib --with-xpm-dir --with-freetype-dir --with-t1lib --with-mcrypt --with-mhash --with-mysql=${Install_Dir}/percona --with-pdo-mysql --with-pdo-pgsql --with-openssl --with-xmlrpc --with-xsl --with-bz2 --with-gettext --with-libxml-dir --with-readline --with-fpm-user=www-data --with-fpm-group=www-data --with-iconv-dir --enable-fpm --enable-exif --enable-wddx --enable-bcmath --enable-calendar --enable-ftp --enable-mbstring --enable-soap --enable-sockets --enable-sqlite-utf8 --enable-shmop --enable-sysvmsg --enable-sysvshm --enable-sysvsem --enable-shared=max --enable-zend-multibyte --enable-mod-charset --enable-embedded-mysqli --enable-libgcc --enable-zip --enable-gd-native-ttf --enable-pcntl
make && make install
#cp php.ini-development ${Install_Dir}/php/etc/php.ini
#cp ${Install_Dir}/php/etc/php-fpm.config.default ${Install_Dir}/php/etc/php-fpm.config

cd ${Download_Dir}

# suhosin
wget -c http://download.suhosin.org/suhosin-0.9.32.1.tar.gz
tar zxvf suhosin-0.9.32.1.tar.gz && cd suhosin-*
${Install_Dir}/php/bin/phpize -clean
./configure --with-php-config=${Install_Dir}/php/bin/php-config
make && make install
echo -e ';Suhosin Extension\nextension = suhosin.so'>${Install_Dir}/php/etc/conf.d/suhosin.ini

cd ${Download_Dir}

# redis-2.2.2
curl -O http://redis.googlecode.com/files/redis-2.2.2.tar.gz
tar zxvf redis-2.2.2.tar.gz && cd redis-2.2.2
mkdir -p ${Install_Dir}/redis/etc
make PREFIX=${Install_Dir}/redis install
cp redis.conf ${Install_Dir}/redis/etc

cd ${Download_Dir}

# memcached-1.4.5
wget -c http://memcached.googlecode.com/files/memcached-1.4.5.tar.gz
tar zxvf memcached-1.4.5.tar.gz && cd memcached-1.4.5
./configure --prefix=${Install_Dir}/memcached
make && make install

cd ${Download_Dir}

# spidermonkey-1.8.0
wget -c ftp://ftp.mozilla.org/pub/mozilla.org/js/js-1.8.0-rc1.tar.gz
tar zxvf js-1.8.0-rc1.tar.gz && cd js-1.8.0-rc1
cd src
make BUILD_OPT=1 -f Makefile.ref
make BUILD_OPT=1 JS_DIST=${Install_Dir}/spidermonkey -f Makefile.ref export

cd ${Download_Dir}

# apache httpd-2.2.17
tar jxvf httpd-2.2.17.tar.bz2 && cd httpd-2.2.17
./configure --prefix=${Install_Dir}/httpd --with-pcre --with-ssl --enable-rewrite --enable-ssl
make && make install

cd ${Download_Dir}

# nodejs-v0.4.2
wget -c http://nodejs.org/dist/node-v0.4.2.tar.gz
tar zxvf node-v0.4.2.tar.gz && cd node-v0.4.2
export JOBS=2
./configure --prefix=${Install_Dir}/node
make && make install

cd ${Download_Dir}

# v8
# search V8_EXTRA_FLAGS  on Sconstruct file, commented 'Werror' => #'Werror'
svn checkout http://v8.googlecode.com/svn/trunk/ v8
cd v8
scons mode=release

cd ${Download_Dir}

# mongodb
git clone git://github.com/mongodb/mongo.git
cd mongo
#git tag -l
#git checkout r1.8.0
scons all --usev8 --prefix=${Install_Dir}/mongo install

cd ${Download_Dir}

# ejs
# edit vim build/bin/buildConfig.sh
wget -c http://ejscript.org/software/ejs-src-1.1.0-1.tar.gz
tar zxvf ejs-src-1.1.0-1 && cd ejs-src-1.1.0-1
./configure --prefix=$HOME/develop/LNMP/ejs --enable-all --with-openss=/usr/lib --with-sqlite
make && make install
ln -sf ${Install_Dir}/ejs/_lib/ejs/1.1.0/* ${Install_Dir}/ejs
ln -sf ${Install_Dir}/ejs/_lib/ejs/jems ${Install_Dir}/ejs/

cd ${Download_Dir}

# siege
#>>./siege -c 20 -r 2 --file=../etc/urls.list
wget -c ftp://sid.joedog.org/pub/siege/siege-latest.tar.gz
tar zxvf siege-latest.tar.gz && cd siege-2.70
./configure --prefix=${Install_Dir}/siege --enable-shared --with-ssl
make && make install

cd ${Download_Dir}

# phpsh
git clone git://github.com/facebook/phpsh.git
cd phpsh
python setup.py install --prefix=${Install_Dir}/phpsh
# .bashrc
#export PATH=${Install_Dir}/phpsh/bin:$PATH
#export PYTHONPATH=${Install_Dir}/phpsh/lib/python2.6/site-packages

cd ${Download_Dir}

# ruby rvm
bash < <( curl http://rvm.beginrescueend.com/releases/rvm-install-head )
