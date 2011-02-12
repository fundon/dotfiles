" ---------------------------------------------------------------------------->>
if exists("did_load_filetypes")
    finish
endif

" filetype
augroup MYFileType
    autocmd! BufNewFile,BufRead *.txt setfiletype txt
    autocmd! BufNewFile,BufRead *.vimwiki setfiletype vimwiki

    autocmd! BufNewFile,BufRead *.php setfiletype php
    autocmd! BufNewFile,BufRead *.tpl.html setfiletype php

    autocmd! BufNewFile,BufRead *.as setfiletype javascript
    autocmd! BufNewFile,BufRead *.json setfiletype json

    autocmd! BufNewFile,BufRead *.go setfiletype go

    " Nginx
    autocmd! BufNewFile,BufRead /etc/nginx/* set ft=nginx
augroup END

" }}}
" <<----------------------------------------------------------------------------

