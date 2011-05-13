HISTCONTROL=ignoredups:ignorespace
HISTSIZE=1000
HISTFILESIZE=2000
shopt -s histappend
shopt -s checkwinsize

# XTERM
export TERM=xterm-256color

# input
export GTK_IM_MODULE=ibus
export XMODIFIERS=@im=ibus
export QT_IM_MODULE=ibus

# colorful man page
export PAGER="`which less` -s"
export BROWSER="$PAGER"
export LESS_TERMCAP_mb=$'\E[01;31m'
export LESS_TERMCAP_md=$'\E[01;31m'
export LESS_TERMCAP_me=$'\E[0m'
export LESS_TERMCAP_se=$'\E[0m'
export LESS_TERMCAP_so=$'\E[01;44;33m'
export LESS_TERMCAP_ue=$'\E[0m'
export LESS_TERMCAP_us=$'\E[01;32m'

KERNEL=`uname -s`
USER_ID=$UID
USER_NAME=$USER
USER_HOME="/home/$USER_NAME"
LSB_RELEASE=`lsb_release -si`

LANG=en_US.utf-8
LC_ALL=en_US.utf-8

#PS1="┌── ${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]: \[\033[01;34m\]\w\[\033[00m\]\$ \n└──>> "
PS1='`a=$?;if [ $a -ne 0 ]; then a="  "$a; echo -ne "\[\e[s\e[1A\e[$((COLUMNS-2))G\e[31m\e[1;41m${a:(-3)}\e[u\]\[\e[0m\e[7m\e[2m\]"; fi`\[\e[1;32m\]\u@\h:\[\e[0m\e[1;34m\] \W \[\e[1;34m\]\$ \[\e[0m\]'

source ~/.colors
eval `dircolors ~/.dircolors`

[[ -f /etc/bash_completion ]] && source /etc/bash_completion

[[ -f $USER_HOME/.bash_aliases ]] && source $USER_HOME/.bash_aliases
[[ -f $USER_HOME/.bash_functions ]] && source $USER_HOME/.bash_functions

export PATH=/sbin:$PATH

[[ -d "$USER_HOME/bin" ]] && export PATH=$USER_HOME/bin:$PATH

#export PATH=$USER_HOME/develop/LNMP/node/bin:$PATH
#export PATH=$USER_HOME/develop/LNMP/php/bin:$PATH

# phpsh
#export PATH=$USER_HOME/develop/LNMP/phpsh/bin:$PATH
#export PYTHONPATH=$USER_HOME/develop/LNMP/phpsh/lib/python2.6/site-packages

# python Completion
export PYTHONSTARTUP=$USER_HOME/.pythonrc

# ruby rvm
#[[ -s "$USER_HOME/.rvm/scripts/rvm" ]] && source "$USER_HOME/.rvm/scripts/rvm"
