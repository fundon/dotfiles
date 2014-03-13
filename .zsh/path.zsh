
# path

export PATH="/usr/local/bin:/usr/local/sbin:/opt/local/bin:/usr/X11/bin:${PATH}"

# Boxen
[ -f /opt/boxen/env.sh ] && source /opt/boxen/env.sh

# coreutils
export PATH=$(brew --prefix coreutils)/libexec/gnubin:$PATH
export MANPATH=$(brew --prefix coreutils)/libexec/gnuman:$MANPATH
eval `dircolors ~/.zsh/dircolors.256dark`
zstyle ':completion:*:default'  list-colors ${(s.:.)LS_COLORS}
export LS_COLORS

# Python & pyenv
export PIP_DOWNLOAD_CACHE=~/.pip/cache
export PYENV_ROOT=/opt/boxen/pyenv
export PATH=$PYENV_ROOT/bin:$PATH
eval "$(pyenv init -)"

# Nodejs
#export PATH=/opt/boxen/nodenv/versions/$(nodenv version)/bin:$PATH

# Ruby
export GEM_HOME=~/opt/gem
export GEM_CACHE=$GEM_HOME/cache
export GEM_SPEC_CACHE=$GEM_HOME/specs
export PATH=$GEM_HOME/bin:$PATH

# Go
export GOPATH=~/opt/go
export PATH=$GOPATH/bin:$PATH

# Docker
export DOCKER_HOST=tcp://

# QT
export QTDIR=$(brew --prefix qt5)

# pkg-config
export PKG_CONFIG_PATH=/opt/boxen/homebrew/lib/pkgconfig:/opt/X11/lib/pkgconfig

# ~/bin
export PATH=~/bin:$PATH
