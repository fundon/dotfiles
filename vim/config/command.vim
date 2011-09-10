fun! OpenURL(url)
    exe "silent !firefox \"".a:url."\""
    redraw!
endfun
command! -nargs=1 OpenURL :call OpenURL(<q-args>)
" open URL under cursor in browser
nnoremap gb :OpenURL <cfile><cr>
nnoremap gG :OpenURL http://www.google.com/search?q=<cword><cr>
nnoremap gW :OpenURL http://en.wikipedia.org/wiki/Special:Search?search=<cword><cr>
