#!/bin/bash

if [ $(id -u) != 0 ]; then
	echo 'You must be a root user.'
	exit 1
fi

cat /proc/cpuinfo

aptitude install -y htop

aptitude install -y libssl-dev zlib1g-dev

slf='/etc/apt/sources.list'
slf_backup="${slf}.$(date +%Y_%m_%d).backup"

cp ${slf} ${slf_backup}

#chromium
chromium=`cat<<EOF
\ndeb http://ppa.launchpad.net/chromium-daily/dev/ubuntu natty main
\ndeb-src http://ppa.launchpad.net/chromium-daily/dev/ubuntu natty main
EOF`

apt-key adv --recv-keys --keyserver keyserver.ubuntu.com 5A9BF3BB4E5E17B5

#chrome
chrome=`cat<<EOF
\ndeb http://dl.google.com/linux/deb/ testing non-free
EOF`

wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add -

#firefox
firefox=`cat<<EOF
\ndeb http://ppa.launchpad.net/ubuntu-mozilla-daily/ppa/ubuntu natty main
\ndeb-src http://ppa.launchpad.net/ubuntu-mozilla-daily/ppa/ubuntu natty main
EOF`

apt-key adv --recv-keys --keyserver keyserver.ubuntu.com 247510BE

echo -e ${chromium} >> ${slf}
echo -e ${chrome} >> ${slf}
echo -e ${firefox} >> ${slf}

#Transparent Terminal
#Enable Gnome Composting
#Control Center -> Desktop Settings -> Windows -> [ ] Use Gnome Composting

# window buttons; front tool: gconf-editor, cli tool: gconftool
gconftool-2 --set /apps/metacity/general/button_layout --type string 'close,maximize,minimize:menu'
# 不显示已挂载的图标
gconftool-2 --set /apps/nautilus/desktop/volumes_visible --type bool 0
# 设置桌面图标
gconftool-2 --set /apps/nautilus/icon_view/default_zoom_level --type string 'small'
# 文件浏览器地址栏
gconftool-2 --set /apps/nautilus/preferences/always_use_location_entry --type bool 1

aptitude install -y exuberant-ctags
aptitude install -y wget curl
aptitude install -y p7zip-full
aptitude install -y amule
aptitude install -y mint-meta-codes
aptitude install -y umplayer
apt-get install -y ibus-gtk ibus-pinyin ibus-pinyin-db-open-phrase
im-switch -s ibus
