#!/bin/bash
# Percona Server
# http://www.percona.com/
# simple start
# > ~/develop/lnmp/percona/bin/mysqld --skip-grant &
# smart start|stop
# > ./init/mysql start
# > ./init/mysql stop
# > mysql -u root -p

PERCONA="$HOME/develop/lnmp/percona"
ETC="$PERCONA/etc"
DATA="$HOME/develop/lnmp/datas/percona"
FILE="Percona-Server-5.5.11-rel20.2"
DFILE="$FILE.tar.gz"
LATEST="http://www.percona.com/downloads/Percona-Server-5.5/$FILE/source/$DFILE"
DOWN_DIR="$HOME/Downloads"
INIT_DIR="$HOME/develop/init"

#sudo groupadd mysql
#sudo useradd mysql -g mysql -r -s /sbin/nologin

if [ ! -s "$DOWN_DIR/$DFILE" ]; then
    wget -c -O "$DOWN_DIR/$DFILE" $LATEST
fi

cd $DOWN_DIR
tar zxvf $DFILE
cd $FILE

# make&&install
sh BUILD/autorun.sh
./configure --prefix=$PERCONA \
--datadir=$DATA \
--with-extra-charsets=complex \
#--with-mysqld-user=mysql \
--with-charset=utf8 \
--with-collation=utf8_general_ci \
--without-plugin-innobase \
--with-plugin-innodb_plugin \
--with-plugin-sphinx \
--with-plugins=innodb_plugin,myisam,partition \
--with-ssl \
--enable-assembler \
--enable-shared \
--enable-local-infile \
--with-big-tables
make
make install

# config
mkdir -p $ETC
cp support-files/*.cnf $ETC
cp support-files/my-medium.cnf $PERCONA/my.cnf
# set mysql.server
# basedir="$HOME/develop/lnmp/percona"
# datadir="$HOME/develop/lnmp/datas/percona"
cat support-files/mysql.server | \
sed -e 's/^\(basedir=\)\(.*\)/\1"$HOME\/develop\/lnmp\/percona"/' | \
sed -e 's/^\(datadir=\)\(.*\)/\1"$HOME\/develop\/lnmp\/datas\/percona"/' \
> $INIT_DIR/mysql

chmod +x $INIT_DIR/mysql

# install db
$PERCONA/scripts/mysql_install_db \
--datadir=$DATA \
--basedir=$PERCONA \
#--user=mysql \
--defaults-file=$PERCONA/my.cnf

# start
$INIT_DIR/mysql start

# set root's passwd
mysql_secure_installation
