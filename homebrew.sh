#!/bin/bash
HOMEBREW=~/develop/homebrew
mkdir $HOMEBREW && curl -L https://github.com/mxcl/homebrew/tarball/master | tar xz --strip 1 -C $HOMEBREW
brew update
brew upgrade
brew install zsh
brew install git
brew install xz
brew install --HEAD https://raw.github.com/adamv/homebrew/master/Library/Formula/coreutils.rb
brew install libevent
brew install tmux
brew install wget
brew install curl 
brew install unrar
brew install aria2
brew install ack
brew install lua
brew install ctags
brew install tree
#brew install macvim --override-system-vim
brew install macvim 
brew install mercurial
brew install --HEAD https://raw.github.com/adamv/homebrew-alt/master/duplicates/vim.rb
brew install --HEAD htop
brew install spark
brew install pwgen
ln -sf ~/develop/homebrew/Cellar/macvim/7.3-63/MacVim.app ~/DevApps

brew install --HEAD https://raw.github.com/adamv/homebrew-alt/master/duplicates/php.rb
brew install mysql
unset TMPDIR
mysql_install_db --verbose --user=`whoami` --basedir="$(brew --prefix mysql)" --datadir=~/develop/data/mysql --tmpdir=/tmp
# /etc/my.cnf ~/.my.cnf
mysql.server start
mysql_secure_installation
brew install bcrypt
brew install imagemagick
brew install smartmontools # for Max OS
brew install monit
brew install redis
brew install siege
brew create webbench
brew install webbench
brew install cmatrix
brew cleanup
