#!/bin/bash

if [ $(id -u) != 0 ]; then
	echo 'You must be a root user.'
	exit 1
fi

apt-get update
apt-get upgrade --show-upgraded

apt-get install -y aptitude
aptitude install -y sudo
aptitude install -y bash-completion
aptitude install -y python-software-properties

aptitude install -y openssh-server
aptitude install -y openssl
aptitude install -y iptables-dev
aptitude install -y fail2ban
aptitude install -y pwgen
aptitude install -y htop
aptitude install -y man-db manpages-dev
aptitude install -y ntp ntpdate
aptitude install -y vim-nox nano

aptitude install -y build-essential
aptitude install -y automake autoconf make autotools-dev
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
aptitude install -y scons

aptitude install -y libevent-dev
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
aptitude install -y libexpat1-dev
aptitude install -y libmagic-dev
aptitude install -y libpq-dev
aptitude install -y libgdbm-dev

# mongodb
aptitude install -y libboost-dev
aptitude install -y libboost-thread-dev libboost-filesystem-dev
aptitude install -y libboost-date-time-dev libboost-program-options-dev

aptitude install -y libmysqlclient-dev

aptitude install -y subversion subversion-tools
aptitude install -y git-core
aptitude install -y mercurial
aptitude install -y tmux
aptitude install -y exuberant-ctags

apt-get clean
apt-get autoclean
apt-get autoremove
