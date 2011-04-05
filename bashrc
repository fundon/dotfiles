KERNEL=`uname -s`

LANG=en_US.utf-8
LC_ALL=en_US.utf-8

#PS1="┌── ${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]: \[\033[01;34m\]\w\[\033[00m\]\$ \n└──>> "
PS1='`a=$?;if [ $a -ne 0 ]; then a="  "$a; echo -ne "\[\e[s\e[1A\e[$((COLUMNS-2))G\e[31m\e[1;41m${a:(-3)}\e[u\]\[\e[0m\e[7m\e[2m\]"; fi`\[\e[1;32m\]\u@\h:\[\e[0m\e[1;34m\]\W\[\e[1;34m\]\$ \[\e[0m\]'

HISTCONTROL=ignoredups:ignorespace
shopt -s histappend
HISTSIZE=1000
HISTFILESIZE=2000

shopt -s checkwinsize

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

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

MountDisks() {
	sudo mount /dev/sda3 /home/cfddream/develop
	sudo mount /dev/sda4 /home/cfddream/others
}

UMountDisks() {
	sudo umount /home/cfddream/develop
	sudo umount /home/cfddream/others
}

cd() {
    if [[ $@ == '-' ]]; then
        builtin cd "$@" > /dev/null  # We'll handle pwd.
    else
        builtin cd "$@"
    fi
    echo -e "   \033[1;30m"`pwd`"\033[0m"
}

man() {
	/usr/bin/man $@ || (help $@ 2> /dev/null && help $@ | less)
}

genpasswd() {
	local l=$1
    [ "$l" == "" ] && l=16
    tr -dc A-Za-z0-9_- < /dev/urandom | head -c ${l} | xargs
}

whatcommand() {
	whatis $1
	which $1
	whereis $1
}

random() {
	echo $RANDOM
}

clean() {
    sudo apt-get autoclean
    sudo apt-get clean
    sudo apt-get autoremove
}

export PATH=/sbin:$PATH

if [ -d "$HOME/bin" ] ; then
    export PATH=$HOME/bin:$PATH
fi
export PATH=$HOME/develop/LNMP/node/bin:$PATH
export PATH=$HOME/develop/LNMP/php/bin:$PATH

# phpsh
export PATH=$HOME/develop/LNMP/phpsh/bin:$PATH
export PYTHONPATH=$HOME/develop/LNMP/phpsh/lib/python2.6/site-packages

# python Completion
export PYTHONSTARTUP=~/.pythonrc

# ruby rvm
[[ -s "/home/cfddream/.rvm/scripts/rvm" ]] && source "/home/cfddream/.rvm/scripts/rvm"
