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

# web frameworks
pip install --upgrade Flask
pip install --upgrade django
pip install --upgrade pylons
pip install --upgrade tornado
pip install --upgrade web.py
pip install --upgrade bottle

# wsgi
pip install --upgrade gunicorn
pip install --upgrade flup
pip install --upgrade uwsgi

# phpsh
#git clone git://github.com/facebook/phpsh.git
#cd phpsh
#python setup.py install
