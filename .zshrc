# .zshrc

# prompt
source ~/.zsh/prompt
setopt promptsubst
PROMPT=' %(?.%F{magenta}.%F{red})λ%f %{$fg_no_bold[blue]%}%~%F{242}%{$reset_color%} '
RPROMPT='(%{$fg[green]%}iojs-$(node -v)%{$reset_color%}) \
(%{$fg[blue]%}docker-$(boot2docker status)%{$reset_color%}) \
(%{$fg[gray]%}go-$(go version | sed "s/.*go\([0-9.]*\).*/\1/")%{$reset_color%}) \
$(update_current_git_vars)'

# boxen
#[ -f /opt/boxen/env.sh ] && source /opt/boxen/env.sh

fpath=(
  # brew zsh
  $(brew --prefix)/share/zsh/site-functions
  # load our own completion functions
  ~/.zsh/completion
  $fpath
)

# completion
autoload -U compinit
compinit

# load custom executable functions
for function in ~/.zsh/functions/*; do
  source $function
done

# makes color constants available
autoload -U colors
colors

# enable colored output from ls, etc
export CLICOLOR=1
# solarized color
export LSCOLORS=gxfxbEaEBxxEhEhBaDaCaD

# history settings
setopt hist_ignore_all_dups inc_append_history
HISTFILE=~/.zhistory
HISTSIZE=4096
SAVEHIST=4096

# awesome cd movements from zshkit
setopt autocd autopushd pushdminus pushdsilent pushdtohome cdablevars
DIRSTACKSIZE=5

# Enable extended globbing
setopt extendedglob

# Allow [ or ] whereever you want
unsetopt nomatch

# vi mode
bindkey -v
bindkey "^F" vi-cmd-mode
bindkey jj vi-cmd-mode

# handy keybindings
bindkey "^A" beginning-of-line
bindkey "^E" end-of-line
bindkey "^R" history-incremental-search-backward
bindkey "^P" history-search-backward
bindkey "^Y" accept-and-hold
bindkey "^N" insert-last-word
bindkey -s "^T" "^[Isudo ^[A" # "t" for "toughguy"=(

# use vim as the visual editor
export VISUAL=vim
export EDITOR=$VISUAL

# load dotfiles scripts
export PATH="$HOME/bin:$PATH"


# autojump
[[ -s `brew --prefix`/etc/autojump.sh ]] && . `brew --prefix`/etc/autojump.sh

# Nodejs
NPM_COMPLETION=$HOME/.zsh/completion/_npm
[ ! -f "$NPM_COMPLETION" ] && npm completion > $NPM_COMPLETION
source $NPM_COMPLETION
unset NPM_COMPLETION
# NVM
source $(brew --prefix nvm)/nvm.sh
export NVM_DIR=~/.nvm
nvm use iojs > /dev/null
NVM_COMPLETION=/usr/local/etc/bash_completion.d/nvm
[ -f "$NVM_COMPLETION" ] && source $NVM_COMPLETION
unset NVM_COMPLETION

# Go
export CHGO_ROOT=/opt/boxen/chgo
export GOPATH=~/dev/go
export PATH=$GOPATH/bin:$PATH
source $(brew --prefix)/share/zsh/site-functions/_go
#export GOPATH=`godep path`:$GOPATH

# Ruby
export RBENV_ROOT=~/dev/rbenv
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

# Docker, access to Box's docker
export DOCKER_HOST="tcp://127.0.0.1:2375"

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

# aliases
[[ -f ~/.zsh/aliases ]] && source ~/.zsh/aliases

# Local config
[[ -f ~/.zshrc.local ]] && source ~/.zshrc.local

# remove duplicates in $PATH
typeset -aU path

# Links {{{
# https://github.com/thoughtbot/dotfiles
# https://github.com/sorin-ionescu/prezto
# https://github.com/milkbikis/powerline-shell
# https://coderwall.com/p/sun7za
# https://github.com/olivierverdier/zsh-git-prompt
# https://github.com/robbyrussell/oh-my-zsh/tree/master/plugins/git-prompt
# https://github.com/zsh-users/zsh-completions
# }}}
