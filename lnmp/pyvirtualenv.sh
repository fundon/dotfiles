#!/bin/bash
# python virtualenv
# start virtualenv
# > virtualenv ~/develop/lnmp/pyvenvs/env2.7

sudo aptitude install -y python-pip
sudo pip install virtualenv

# python envs
VENVS="$HOME/develop/lnmp/pyvenvs"

if [ ! -d $VENVS ]; then
    mkdir $VENVS
    echo "mkdir $VENVS done."
fi
