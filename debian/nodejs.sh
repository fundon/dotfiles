#!/bin/bash

export JOBS=2 # optional, sets number of parallel commands.
./configure --prefix=$HOME/develop/LNMP/node
make
make install
#export PATH=$HOME/local/node/bin:$PATH
