#!/bin/bash
# mongodb

mongodb="$HOME/develop/lnmp/mongodb"
SITE="http://fastdl.mongodb.org/linux"
VERSION="1.8.1"
FILE="mongodb-linux-i686-$VERSION"
LATEST="$FILE.tgz"
DOWN_DIR="$HOME/Downloads"

if [ ! -s "$DOWN_DIR/$LATEST" ]; then
    wget -c -O "$DOWN_DIR/$LATEST" "$SITE/$LATEST"
fi

cd $DOWN_DIR
tar zxvf $LATEST

if [ ! -d "$mongodb" ]; then
    mv $FILE $mongodb
    mkdir -p $mongodb/etc
    mkdir -p $mongodb/var
fi

cat > $mongodb/etc/mongodb.conf<<EOF
# Configuration Options for MongoDB
#
# For More Information, Consider:
# - Configuration Parameters:
# http://www.mongodb.org/display/DOCS/Command+Line+Parameters
# - File Based Configuration:
# http://www.mongodb.org/display/DOCS/File+Based+Configuration

dbpath = $mongodb/var
logpath = $mongodb/var/mongodb.log
logappend = true

bind_ip = 127.0.0.1
port = 27017
fork = true

auth = true
# noauth = true
EOF

#### source
## v8
## search V8_EXTRA_FLAGS  on Sconstruct file, commented 'Werror' => #'Werror'
#svn checkout http://v8.googlecode.com/svn/trunk/ v8
#cd v8
#scons mode=release

#cd $DOWN_DIR

## mongodb
#git clone git://github.com/mongodb/mongo.git
#cd mongo
##git tag -l
##git checkout r1.8.0
#scons all --usev8 --prefix=$mongodb install
