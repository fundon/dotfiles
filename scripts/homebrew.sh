#!/bin/bash
HOMEBREW=~/develop/homebrew
mkdir $HOMEBREW && curl -L https://github.com/mxcl/homebrew/tarball/master | tar xz --strip 1 -C $HOMEBREW
brew update
brew upgrade
brew install zsh
brew install bash-completion
brew install ssh-copy-id
brew install grc
brew install git
brew install tig
brew install git-flow
brew install git-extras
brew install xz
brew install coreutils
brew install gettext
brew link gettext
brew install libevent
brew install tmux
brew install ruby
brew install wget
brew install curl -f
brew link curl
brew install unrar
brew install aria2
brew install ack
brew install lua
brew install ctags
brew install tree
brew install autojump
brew install rename
#brew install macvim --override-system-vim
brew install macvim
brew install mercurial
brew install https://raw.github.com/adamv/homebrew-alt/master/duplicates/vim.rb
brew install --HEAD htop
brew install spark
brew install pwgen
ln -sf ~/develop/homebrew/Cellar/macvim/7.3-63/MacVim.app ~/DevApps

brew install --HEAD https://raw.github.com/adamv/homebrew-alt/master/duplicates/php.rb
#brew install mysql
brew install https://raw.github.com/gist/1187345/3daa0f4d9602dd20c07ea5c4be763d3dcceb0ab6/percona-server.rb
brew link percona-server
unset TMPDIR
mysql_install_db --verbose --user=`whoami` --basedir="$(brew --prefix percona-server)" --datadir="$HOME/develop/data/percona" --tmpdir=/tmp
# /etc/my.cnf ~/.my.cnf
mysql.server start
mysql_secure_installation
brew install postgresql
brew install bcrypt
brew install imagemagick
brew install smartmontools # for Max OS
brew install monit
brew install redis
brew install siege
brew create webbench
brew install webbench
brew install cmatrix
brew install mongodb
brew install memcached
brew install autossh
brew cleanup
