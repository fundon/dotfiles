#!/bin/bash
# www.dotcloud.com Paas
# http://www.kissdry.dotcloud.com/

KD="$HOME/myprojects/dotcloud/kissdry"
PYVENVS="$HOME/develop/lnmp/pyvenvs"
ENV="env`python -V 2>&1 | awk '{print substr($2, 1, 3)}'`"
NP="kissdry" # namespace

# switch python virtualenv
. $PYVENVS/$ENV/bin/activate
pip install --upgrade dotcloud

dotcloud create $NP
dotcloud deploy -t python $NP.www
dotcloud deploy -t redis $NP.redis
dotcloud deploy -t mysql $NP.mysql
dotcloud deploy -t mongodb $NP.mongodb

dotcloud list

dotcloud info $NP.www
dotcloud info $NP.redis
dotcloud info $NP.mysql
dotcloud info $NP.mongodb

# login mysql
#dotcloud run $NP.mysql -- mysql -u root -p

mkdir -p $KD && cd $KD

dotcloud log $NP.www

dotcloud push $NP.www $ND
dotcloud run $NP.www -- ls -l

# get ssh api-key on dotcloud.www/account/setting
dotcloud ssh $NP.www
# >> pip install Flask
# >> pip install redis
# >> pip install pymongo

# locale
echo "from kissdry import app as application" > wsgi.py
cat > kissdry.py <<EOF
from flask import Flask
app = Flask(__name__)

@app.route('/')
def hello_world():
    return "Hello World!"

@app.route('/about')
def about():
    return "<div><img src='/static/dotcloud.png' alt='If you dont see the image, your WSGI setup is broken'/></div>",

if __name__ == '__main__':
    app.run()
EOF
