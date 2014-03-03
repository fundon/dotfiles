
# Completion & Functions {{{
# load completion functions
fpath=(/opt/boxen/homebrew/share/zsh-completions $fpath)
fpath=(~/.zsh/completion $fpath)

# completion
autoload -U compinit
compinit

for function in ~/.zsh/functions/*; do
  source $function
done
# }}}

# Set Options {{{
# history settings
setopt histignoredups
SAVEHIST=4096
HISTSIZE=4096

# awesome cd movements from zshkit
setopt autocd autopushd pushdminus pushdsilent pushdtohome cdablevars
DIRSTACKSIZE=5

# Try to correct command line spelling
#setopt correct correctall
setopt nocorrectall

# Enable extended globbing
setopt extendedglob

# Allow [ or ] whereever you want
unsetopt nomatch
# }}}

# Bind Keys {{{
# vi mode
bindkey -v
bindkey "^F" vi-cmd-mode
bindkey jj vi-cmd-mode

# handy keybindings
bindkey "^A" beginning-of-line                        # ctrl-a
bindkey "^E" end-of-line                              # ctrl-e
bindkey "^R" history-incremental-search-backward      # ctrl-r
bindkey "^P" history-search-backward
bindkey "^Y" accept-and-hold
bindkey "^N" insert-last-word
bindkey -s "^T" "^[Isudo ^[A" # "t" for "toughguy"

bindkey "^K"      kill-whole-line                      # ctrl-k
bindkey "^D"      delete-char                          # ctrl-d
bindkey "^W"      backward-delete-word                 # ctrl-w
bindkey "^L"      forward-char                         # ctrl-l
bindkey "^H"      backward-char                        # ctrl-h
# }}}

# Colors {{{
autoload -U colors && colors
# The variables are wrapped in %{%}. This should be the case for every
# variable that does not contain space.
for COLOR in RED GREEN YELLOW BLUE MAGENTA CYAN BLACK WHITE; do
  eval PR_$COLOR='%{$fg_no_bold[${(L)COLOR}]%}'
  eval PR_BOLD_$COLOR='%{$fg_bold[${(L)COLOR}]%}'
done

eval RESET='$reset_color'
export PR_RED PR_GREEN PR_YELLOW PR_BLUE PR_WHITE PR_BLACK
export PR_BOLD_RED PR_BOLD_GREEN PR_BOLD_YELLOW PR_BOLD_BLUE 
export PR_BOLD_WHITE PR_BOLD_BLACK

# Clear LSCOLORS
unset LSCOLORS

export CLICOLOR=1
#export LS_COLORS=exfxcxdxbxegedabagacad
export LS_COLORS=Gxfxcxdxbxegedabagacad
# }}}

# Exports {{{
export HISTSIZE=1000
export HISTFILESIZE=1000
export HISTFILE=~/.zshhistory
export HISTCONTROL=erasedups

export ARCHFLAGS='-arch x86_64'
export TERM=xterm-256color

export VISUAL=vim
export EDITOR=$VISUAL

# Enable color in grep
export GREP_OPTIONS='--color=auto'
export GREP_COLOR='3;33'
export LESS='--ignore-case --raw-control-chars'
export PAGER='less'

export LC_COLLATE=C

export PATH="/usr/local/bin:/usr/local/sbin:/opt/local/bin:/usr/X11/bin:${PATH}"

# Python
export PIP_DOWNLOAD_CACHE=~/.pip/cache

# Boxen
[ -f /opt/boxen/env.sh ] && source /opt/boxen/env.sh

# Nodejs
export PATH=/opt/boxen/nodenv/versions/$(nodenv version)/bin:$PATH

# Ruby
export GEM_HOME=~/Dev/gem
export GEM_CACHE=$GEM_HOME/cache
export GEM_SPEC_CACHE=$GEM_HOME/specs
export PATH=$GEM_HOME/bin:$PATH

# Go
export GOPATH=~/Dev/go
export PATH=$GOPATH/bin:$PATH

# Docker
export DOCKER_HOST=tcp://

# QT
export QTDIR=$(brew --prefix qt5)

# pkg-config
export PKG_CONFIG_PATH=/opt/boxen/homebrew/lib/pkgconfig:/opt/X11/lib/pkgconfig

# ~/bin
export PATH=~/bin:$PATH
# }}}

# Aliases {{{
alias ..="cd .."
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'
alias l='ls'
alias ll='ls -alFh'
alias ln='ln -v'
alias -g G='| grep'
alias -g M='| less'
alias -g L='| wc -l'
alias -g ONE="| awk '{ print \$1}'"
alias tlf='tail -f'
alias mkdir='mkdir -p'
alias vim='mvim -v'
alias e="$EDITOR"
alias v="$VISUAL"
alias c='clear'
alias g="git"
# }}}

# Prompt {{{
fpath=(~/.zsh/theme $fpath)
# Allow for functions in the prompt.
setopt prompt_subst
autoload -Uz promptinit && promptinit
prompt eve
# }}}

# Local Settings
[[ -f ~/.zshrc.local ]] && source ~/.zshrc.local

# Links {{{
# https://github.com/sorin-ionescu/prezto
# https://github.com/milkbikis/powerline-shell
# https://coderwall.com/p/sun7za
# https://github.com/olivierverdier/zsh-git-prompt
# https://github.com/robbyrussell/oh-my-zsh/tree/master/plugins/git-prompt
# }}}
