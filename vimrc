""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" _________________________
"( cfddream's VIM Settings )
" -------------------------
"   o
"    o
"     o  .--.
"       |o_o |
"       |:_/ |
"      //   \ \
"     (|     | )          ,-O  Ubuntu Linux
"     /'\_   _/`\       O(_ )) http://www.ubuntu.com/
"     \___)=(___/         `-O  Linux for Human Beings
"
"~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
" Author: cfddream
" Email: cfddream[at]gmail.com
" Blog:
" Create: 07-12-2010 18:01:04
" Modified: 08-12-2010 21:27:04
" Vim: set et sw=ts=sts=4 ft=vim ff=unix fenc=utf-8
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" ---------------------------------------------------------------------------->>
" Check OS: " {{{
let g:iswin = 0
if has('win16') || has('win32') || has('win64')
    let $HOME = expand('F://opensources/dotfiles')
    let $MYVIM = expand($HOME.'/.vim')
    let g:iswin = 1
else
    let $MYVIM = expand('~/.vim')
    let g:lsb = substitute(system('lsb_release -si'), '[\s\n]\+', '', '')
endif
" }}}

source /home/cfddream/develop/myprojects/cfddream/dotfiles/vimrc

" Load Bootstrap: " {{{
runtime! bootstrap.vim
" }}}
" <<----------------------------------------------------------------------------
