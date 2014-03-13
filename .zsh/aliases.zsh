
# aliases

alias ~="cd ~"
alias cb="cd -"
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."
alias ......="cd ../../../../.."
alias 1.="cd .."
alias 2.="cd ../.."
alias 3.="cd ../../.."
alias 4.="cd ../../../.."
alias 5.="cd ../../../../.."

# use -G instead of --color for Mac OS X built-in ls utility
alias l="ls --color"
alias la="ls -A --color"
alias ll="ls -lh --color"
alias lla="ls -lAh --color"
alias lsd='ls -A --color | grep "^d"'
alias lsg='ls -A | grep'

alias -g G='| grep'
alias -g M='| less'
alias -g L='| wc -l'
alias -g ONE="| awk '{ print \$1}'"
alias h="history"
alias e="$EDITOR"
alias v="$VISUAL"
alias o="open"
alias oo="open ."
alias c="clear"
alias g="git"
alias tlf='tail -f'
alias vim='mvim -v'
alias tmux="tmux -2"
alias mkdir='mkdir -p'
alias node-harmony="node --harmony-generators"
alias brewup="brew update; brew upgrade; brew cleanup"
alias boxenup="boxen --no-fde"
