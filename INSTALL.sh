#!/bin/bash

dotfiles=~/dotfiles

# bashrc
ln -sf $dotfiles/bashrc ~/.bashrc
ln -sf $dotfiles/bash_aliases ~/.bash_aliases

# conky
ln -sf $dotfiles/conkyrc ~/.conkyrc

# screenrc
ln -sf $dotfiles/screenrc ~/.screenrc

# python completion
ln -sf $dotfiles/bash/completion/python-completion ~/.pythonrc

# git completion
ln -sf $dotfiles/bash/completion/git-completion.bash ~/.git-completion.bash
ln -sf $dotfiles/.gitconfig ~/.gitconfig
ln -sf $dotfiles/.gitignore ~/.gitignore

# vim & gvim
rm -rf ~/.vim
ln -sf $dotfiles/vim ~/.vim
ln -sf $dotfiles/vimrc ~/.vimrc
ln -sf $dotfiles/gvimrc ~/.gvimrc
