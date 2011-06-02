#!/bin/bash
# postgresql
# http://www.postgresql.org/
# ftp://ftp.postgresql.org/pub/
# start|stop
# > ./init/postgresql start
# > ./init/postgresql stop
# > pgsql -U root -W test

PGSQL="$HOME/develop/lnmp/pgsql"
DATA="$HOME/develop/lnmp/datas/pgsql"
VERSION="9.0.4"
FILE="postgresql-$VERSION"
DFILE="$FILE.tar.bz2"
LATEST="ftp://ftp.postgresql.org/pub/latest/$DFILE"
DOWN_DIR="$HOME/Downloads"
INIT_DIR="$HOME/develop/init"

if [ ! -s "$DOWN_DIR/$DFILE" ]; then
    wget -c -O "$DOWN_DIR/$DFILE" $LATEST
fi

echo $DOWN_DIR
cd $DOWN_DIR
tar jxvf $DFILE
cd $FILE

# make && install
./configure --prefix=$HOME/develop/lnmp/pgsql \
--enable-profiling \
--with-python \
--without-readline
make
make install

#set postgresql init sh
# prefix="$HOME/develop/lnmp/pgsql"
# PGDATA="$HOME/develop/lnmp/datas/pgsql"
# PGUSER="$USER"
cat contrib/start-scripts/linux | \
sed -e 's/^\(prefix=\)\(.*\)/\1"$HOME\/develop\/lnmp\/pgsql"/' | \
sed -e 's/^\(PGDATA=\)\(.*\)/\1"$HOME\/develop\/lnmp\/datas\/pgsql"/' | \
sed -e 's/^\(PGUSER=\)\(.*\)/\1"$USER"/' \
> $INIT_DIR/postgresql

chmod +x $INIT_DIR/postgresql

# initdb
$PGSQL/bin/initdb -D $DATA

# start
$INIT_DIR/postgresql start

# create user and test db
$PGSQL/bin/createuser -d -a -P root
$PGSQL/bin/createdb test
