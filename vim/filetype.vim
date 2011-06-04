" ---------------------------------------------------------------------------->>
if exists("did_load_filetypes")
    finish
endif

augroup filetypedetect
    autocmd! BufNewFile,BufRead *.txt setfiletype txt
    autocmd! BufNewFile,BufRead *.vimwiki setfiletype vimwiki
    autocmd! BufNewFile,BufRead {TODO,todo,TodoList} setfiletype todo

    autocmd! BufNewFile,BufRead *.md setfiletype markdown

    autocmd! BufNewFile,BufRead *.php setfiletype php
    autocmd! BufNewFile,BufRead *.tpl.html setfiletype php

    autocmd! BufNewFile,BufRead *.rss,*.atom setfiletype xml

    autocmd! BufNewFile,BufRead *.as setfiletype javascript
    autocmd! BufNewFile,BufRead *.json setfiletype json

    autocmd! BufNewFile,BufRead *.go setfiletype go

    autocmd! BufNewFile,BufRead *.css syntax=css3

    " Apache
    autocmd! BufNewFile,BufRead /etc/apache2/*,/etc/httpd/* setlocal filetype=apache
    " Nginx
    autocmd! BufNewFile,BufRead /etc/nginx/* set ft=nginx
    " SH
    autocmd! BufNewFile,BufRead $HOME/dotfiles/bash/* set ft=sh
augroup END

" }}}
" <<----------------------------------------------------------------------------
