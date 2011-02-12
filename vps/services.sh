#!/bin/bash

apt-get install -y aptitude
aptitude install -y bash-completion
aptitude install -y python-software-properties
aptitude install -y python-setuptools

aptitude install -y openssh-server
aptitude install -y openssl
aptitude install -y iptables
aptitude install -y pwgen
aptitude install -y htop
aptitude install -y ntp ntpdate
aptitude install -y vim-nox nano

aptitude install -y build-essential
aptitude install -y automake autoconf make
aptitude install -y gcc g++
aptitude install -y cpp binutils
aptitude install -y re2c wget curl cron file
aptitude install -y rcconf flex gettext
aptitude install -y bison m4 gawk less
aptitude install -y unzip unrar bzip2 p7zip tar
aptitude install -y zlibc
aptitude install -y zlib1g-dev
aptitude install -y imagemagick

aptitude install -y psmisc
aptitude install -y python-dev
aptitude install -y python-setuptools

aptitude install -y libx11-dev
aptitude install -y libxt-dev
aptitude install -y libxext-dev
aptitude install -y libexif-dev
aptitude install -y liblcms1-dev
aptitude install -y libjasper-dev
aptitude install -y libtool libltdl-dev
aptitude install -y libzip-dev
aptitude install -y libbz2-dev
aptitude install -y libt1-dev
aptitude install -y libtiff4-dev
aptitude install -y libwmf-dev
aptitude install -y libncurses5-dev libncursesw5-dev
aptitude install -y libreadline6-dev
aptitude install -y libglib2.0-dev
aptitude install -y libevent-dev
aptitude install -y libpcre3-dev
aptitude install -y libssl-dev
aptitude install -y libcurl4-gnutls-dev libcurl4-openssl-dev
aptitude install -y libmcrypt-dev
aptitude install -y libxml2-dev
aptitude install -y libxslt1-dev
aptitude install -y libmhash-dev
aptitude install -y libxpm-dev
aptitude install -y libpng12-dev
aptitude install -y libjpeg62-dev
aptitude install -y libfreetype6-dev
aptitude install -y libmagic-dev
aptitude install -y libpq-dev
aptitude install -y libgdbm-dev

aptitude install -y subversion subversion-tools
aptitude install -y git-core

# nginx
curl -O http://nginx.org/download/nginx-0.8.54.tar.gz
tar zxvf nginx-*
cd nginx-*
./configure --prefix=/opt/nginx --user=nginx --group=nginx --with-http_ssl_module --with-http_gzip_static_module --with-http_stub_status_module --with-http_realip_module
make && make install
/opt/nginx/sbin/nginx -v
adduser --system --no-create-home --disabled-login --disabled-password --group nginx
curl https://library.linode.com/web-servers/nginx/installation/reference/init-deb.sh -o nginx-init-deb.sh
cp nginx-init-deb.sh /etc/init.d/nginx
chmod +x /etc/init.d/nginx
/usr/sbin/update-rc.d -f nginx defaults
ulimit -SHn 65535
/etc/init.d/nginx start

# nodejs
curl -O http://nodejs.org/dist/node-v0.2.6.tar.gz
tar zxvf node-v0.2.6.tar.gz
cd node-v0.2.6/
./configure --prefix=/opt/node
make && make install
/opt/node/bin/node -v

echo 'export PATH=$HOME/local/bin:$PATH' >> ~/.bashrc
. ~/.bashrc
mkdir ~/local
mkdir -P ~/softs/node-latest-install
cd ~/softs/node-latest-install
curl http://nodejs.org/dist/node-latest.tar.gz | tar xz --strip-components=1
./configure --prefix=~/local
make install # ok, fine, this step probably takes more than 30 seconds...
cat >>~/.npmrc <<NPMRC
root = ~/.node_libraries
binroot = ~/local/bin
manroot = ~/local/share/man
NPMRC
curl http://npmjs.org/install.sh | sh
npm -v
npm ls
