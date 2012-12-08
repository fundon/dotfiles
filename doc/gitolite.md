## gitolite
http://sitaramc.github.com/gitolite/qi.html

# get the software
git clone git://github.com/sitaramc/gitolite

# create git user
sudo adduser --system --shell /bin/bash --gecos 'git version control' --group --disabled-password --home /home/git git
sudo su git
echo "PATH=$HOME/bin:$PATH" > ~/.bashrc
cd

# mkdir bin
mkdir /home/git/bin

# install it
gitolite/install -ln

# setup the initial repos with your key
gitolite setup -pk your-name.pub
cp ~/.gitolite/conf/gitolite.rc ~/
gitolite compile
gitolite setup -pk your-name.pub

vim ~/.ssh/config

  Host git
    User git
    Hostname 127.0.0.1
    Port 22
    IdentityFile /home/git/.ssh/gitolite

chmod 644 ~/.ssh/config
chmod 700 ~/.ssh/id_dsa

# [Markdoc](http://markdoc.org/)
## Ubuntu:
  > aptitude install python-pip
  > pip install markdoc
  > which markdoc # /usr/local/bin/markdoc
  > aptitude install monit

## Referrs:
  * http://blog.countableset.ch/2012/04/29/ubuntu-12-dot-04-installing-gitolite-and-gitweb/
  * http://www.momo-lab.net/saru/
  * https://wiki.archlinux.org/index.php/Gitolite
  * http://www.linuxforu.com/2011/01/gitolite-specify-complex-access-controls-git-server/
  * http://www.bigfastblog.com/gitolite-installation-step-by-step
  * http://www.bigfastblog.com/install-gitolite-to-manage-your-git-repositories
  * http://automatica.com.au/2011/01/setup-git-server-on-mac-osx-server/
  * http://silas.sewell.org/blog/2011/01/08/setup-gitolite-on-ubuntu/
  * http://demonastery.org/2012/09/a-hooking-system-for-gitolite/
