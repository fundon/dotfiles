#!/bin/bash
# node & npm

DOWN_DIR="$HOME/Downloads"
cd $DOWN_DIR

# node
node="$HOME/develop/lnmp/node"
git clone git://github.com/joyent/node.git
cd node
./configure --prefix=$node
make && make install

cd ..

# npm
export PATH=$node/bin:$PATH
git clone git://github.com/isaacs/npm.git
cd npm
make dev

cd ..
