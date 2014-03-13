
# exports
export HISTSIZE=10000
export SAVEHIST=$HISTSIZE
export HISTFILE=~/.zshhistory
export HISTCONTROL=erasedups

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
export LS_COLORS=Gxfxcxdxbxegedabagacad

export ARCHFLAGS='-arch x86_64'
export TERM=xterm-256color

export LC_COLLATE=C
export LC_CTYPE="en_US.UTF-8"

export GREP_OPTIONS="--color=auto"

export LESS='--ignore-case --raw-control-chars'
export PAGER='less'

export VISUAL=vim
export EDITOR=$VISUAL
