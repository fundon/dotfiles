#!/bin/bash

doitfiles="$HOME/develop/myProjects/dotfiles"

# config git
function init_git() {
	echo 'config git ...'
	ln -sf ${doitfiles}/.gitconfig ~/.gitconfig
	ln -sf ${doitfiles}/.gitignore ~/.gitignore
}

$1
