#!/bin/bash

if [ $(id -u) != 0 ]; then
	echo 'You must be a root user.'
	exit 1
fi

yum update
yum upgrade

yum install -y ctags
yum install -y wget
yum install -y bash-completion
yum install -y python3
# iostat vmstat ifstat
yum install -y dstat
# 进程、内存、io 监视
yum install -y htop iotop
# traceroute
yum install -y mtr
# 网络流量
yum install -y iftop iptraf
# ack grep
yum install -y ack

yum install -y gnome-tweak-tool
yum install -y amule
# video code
yum install -y streamer-plugins-bad gstreamer-plugins-ugly gstreamer-ffmpeg
yum install -y terminator
# math tool
yum install -y qalculate
#su -c 'wget https://dl-ssl.google.com/linux/google-repo-setup.sh && bash google-repo-setup.sh'
