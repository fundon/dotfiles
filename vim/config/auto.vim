if has('autocmd')

augroup vimrcEx
    au!

    autocmd BufReadPost *
        \ if line("'\"") > 0 && line("'\"") <= line("$") |
        \ exe "normal g`\"" |
        \ endif
augroup END

endif

