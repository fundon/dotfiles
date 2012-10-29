export PATH=/usr/local/bin:/usr/local/sbin:/usr/bin:/usr/sbin:/bin:/sbin:/usr/X11/bin

# https://github.com/Homebrew
ruby -e "$(curl -fsSkL raw.github.com/mxcl/homebrew/go)"
export PATH=/usr/local/bin:/usr/local/sbin:/usr/bin:/usr/sbin:/bin:/sbin
env ARCHFLAGS="-arch x86_64"
brew update
brew upgrade
brew tap homebrew/versions

# bash-completion
brew install bash-completion

# Coreutils
brew install coreutils

# Openssl
brew install openssl

# Wget
brew install wget

# Nmap
brew install nmap

# Mercurial
brew install mercurial

# Vim
brew install homebrew/dupes/vim

# Curl
brew install curl
brew link curl

# iftop
brew install iftop

# Monit
brew install monit

# Git
brew install git
brew install git-extras

# Password Generator - pwgen
brew install pwgen
pwgen -1 -B 7

# Z
brew install z

# Tree
brew install tree

# Sqlite
brew install sqlite

# Readline
brew install readline

# Gdbm
brew install gdbm

# Mysql - percona-server
brew install percona-server percona-toolkit
unset TMPDIR
mysql_install_db --help
mysql_install_db --verbose --user=`whoami` --basedir="$(brew --prefix percona-server)" --datadir=/usr/local/var/percona --tmpdir=/tmp
mysql.server start
mysql_secure_installation
#mysql -uroot -p

# Postgresql
brew install postgresql
initdb /usr/local/var/postgres -E utf8
pg_ctl -D /usr/local/var/postgres -l /usr/local/var/postgres/server.log start
#pg_ctl -D /usr/local/var/postgres stop -s -m fast
createdb test
#psql test
psql -l

# Zeromq
brew install zeromq

# Nginx
brew install nginx

# Lighttpd
brew install lighttpd

# Redis
brew install redis
#redis-server /usr/local/etc/redis.conf
#redis-cli

# Mongodb
brew install mongodb

# haproxy
brew install haproxy

# Python
brew install python --universal --framework
export PATH=/usr/local/share/python:${PATH}
export WORKON_HOME=$HOME/.virtualenvs
export VIRTUALENVWRAPPER_PYTHON=/usr/local/bin/python2.7
export VIRTUALENVWRAPPER_VIRTUALENV_ARGS='--no-site-packages'
export PIP_VIRTUALENV_BASE=$WORKON_HOME
export PIP_RESPECT_VIRTUALENV=true
if [[ -r /usr/local/share/python/virtualenvwrapper.sh ]]; then
  source /usr/local/share/python/virtualenvwrapper.sh
else
  echo "WARNING: Can't find virtualenvwrapper.sh"
fi
easy_install pip
pip install virtualenv
pip install virtualenvwrapper
pip install --upgrade distribute
pip install httpie
pip install requests

# PHP5.4
brew tap homebrew/dupes
brew tap josegonzalez/homebrew-php
brew options php54
brew install php54 --without-apache --with-homebrew-php --with-homebrew-openssl --with-mysql --with-tidy --with-suhosin --with-pgsql --with-intl --with-fpm --with-gmp --with-imap
chmod -R ug+w /usr/local/Cellar/php54/5.4.7/lib/php
pear config-set php_ini /usr/local/etc/php/5.4/php.ini
export PATH="$(brew --prefix josegonzalez/php/php54)/bin:$PATH"
pear config-set auto_discover 1
pear update-channels
pear upgrade
brew install php54-redis
echo -e "\n[redis]\nextesion=redis.so\n"

# MacVIM
brew install macvim
brew linkapps

# Tmux
brew install tmux
brew install reattach-to-user-namespace

# Lua
brew install lua52

# Luvit.io
brew install luvit --HEAD

# Node
brew install node --enable-debug

# go
brew install go --HEAD

# siege
brew install siege
