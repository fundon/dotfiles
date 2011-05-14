#!/bin/bash

dotfiles=~/dotfiles

# bashrc
ln -sf $dotfiles/bashrc ~/.bashrc
ln -sf $dotfiles/bash_profile ~/.bash_profile

# conky
ln -sf $dotfiles/conkyrc ~/.conkyrc

# screenrc
ln -sf $dotfiles/screenrc ~/.screenrc

# git completion
ln -sf $dotfiles/.gitconfig ~/.gitconfig
ln -sf $dotfiles/.gitignore ~/.gitignore

# vim & gvim
rm -rf ~/.vim
ln -sf $dotfiles/vim ~/.vim
ln -sf $dotfiles/vimrc ~/.vimrc
ln -sf $dotfiles/gvimrc ~/.gvimrc
cd $dotfiles
git submodule init
git submodule update
cd -
