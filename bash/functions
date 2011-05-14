MountDisks() {
	[[ ! -d $USER_HOME/develop ]] && mkdir $USER_HOME/develop
	[[ ! -d $USER_HOME/others ]] && mkdir $USER_HOME/others
	sudo mount /dev/sda3 $USER_HOME/develop
	sudo mount /dev/sda4 $USER_HOME/others
}

UMountDisks() {
	sudo umount $USER_HOME/develop
	sudo umount $USER_HOME/others
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
    	#rm /var/lib/apt/lists/*
    	#rm /var/lib/apt/lists/partial/*
}

webshare() {
    	python -c "import SimpleHTTPServer;SimpleHTTPServer.test()"
}

addToSudo() {
    	usermod -a -G sudo cfd
}

VBOX_SSH() {
    	ssh -p 2222 cfd@localhost
}

M_VBOX() {
	# mkdir $USER_HOME/$1
	su -s "mount -t vboxsf $1 $USER_HOME/$1"
}

UM_VOBX() {
	su -s "umount $USER_HOME/$1"
}

netStat() {
    	netstat -lnpt
}

routeN() {
    	route -n
}
