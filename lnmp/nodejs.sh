#!/bin/bash
# node & npm

# node
node="$HOME/develop/lnmp/node"
git clone git://github.com/joyent/node.git
cd node
./configure --prefix=$node
make && make install

cd ..

# npm
git clone git://github.com/isaacs/npm.git
cd npm
make dev

cd ..
