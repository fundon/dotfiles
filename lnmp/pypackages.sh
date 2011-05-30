#!/bin/bash
# aptitude install python-dev
# python install packages
# active env2.7
# > pyve env2.7
# deactivate
# > deactivate

PYVENVS="$HOME/develop/lnmp/pyvenvs"
ENV="env2.7"

if [ ! -d "$PYVENVS/$ENV" ]; then
    mkdir -p $PYVENVS/$ENV
fi

. $PYVENVS/$ENV/bin/activate
pip install --upgrade redis
pip install --upgrade MySQL-python
