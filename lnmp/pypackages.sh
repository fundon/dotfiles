#!/bin/bash
# aptitude install python-dev
# python install packages
# active env2.7
# > pyve env2.7
# deactivate
# > deactivate

PYVENVS="$HOME/develop/lnmp/pyvenvs"
ENV="env`python -V 2>&1 | awk '{print substr($2, 1, 3)}'`"

if [ ! -d "$PYVENVS/$ENV" ]; then
    mkdir -p $PYVENVS/$ENV
fi

virtualenv $PYVENVS/$ENV
. $PYVENVS/$ENV/bin/activate
pip install --upgrade redis
pip install --upgrade MySQL-python
pip install --upgrade Flask
