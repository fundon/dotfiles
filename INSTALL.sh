#!/bin/bash

dotfiles=~/dotfiles

# inputrc
ln -sf $dotfiles/inputrc ~/.inputrc

# bashrc
ln -sf $dotfiles/bash ~/.bash
ln -sf $dotfiles/bashrc ~/.bashrc
ln -sf $dotfiles/bash_profile ~/.bash_profile

# conky
ln -sf $dotfiles/conkyrc ~/.conkyrc

# screenrc
ln -sf $dotfiles/screenrc ~/.screenrc

# fonts
ln -sf $dotfiles/fonts ~/.fonts
fc-cache -fv ~/.fonts

# git completion
ln -sf $dotfiles/.gitconfig ~/.gitconfig
ln -sf $dotfiles/.gitignore ~/.gitignore

# node npm
ln -sf $dotfiles/npmrc ~/.npmrc

# vim & gvim
rm -rf ~/.vim
ln -sf $dotfiles/vim ~/.vim
ln -sf $dotfiles/vimrc ~/.vimrc
ln -sf $dotfiles/gvimrc ~/.gvimrc
cd $dotfiles
git submodule init
git submodule update
cd -
