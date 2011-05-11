" ---------------------------------------------------------------------------->>
" Autocmds: " {{{

if has('autocmd')

    " do syntax highlight syncing from the start
    autocmd BufEnter * :syntax sync fromstart

    " Remove trailing whitespaces and ^M chars
    "autocmd FileType c,cpp,java,php,python,ruby,javascript,ruby,sh
    "    \perl,css,twig,xml,yml,vim
    "    \ autocmd BufWritePre <buffer> :call RemoveSpacesM()
    autocmd BufEnter * :lcd %:p:h
    autocmd BufReadPost * :call SetCursorPosition()

    autocmd! BufWritePost .vimrc source $MYVIMRC

    augroup vimrc
    autocmd!
    " SH:
        "autocmd BufNewFile *.sh call AutoHead()
    "

    " HTML CSS:
        let html_use_css = 1
        autocmd FileType css setlocal et ts=2 sw=2 sts=2
        autocmd FileType html setlocal et ts=2 sw=2 sts=2
        autocmd FileType css inoremap !! !important
        autocmd FileType html setlocal omnifunc=htmlcomplete#CompleteTags
        autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
    "

    " XML:
        let xml_use_xhtml = 1
        autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags
    "

    " JavaScript:
        let javascript_enable_domhtmlcss=1
        autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
    "

    " PHP:
        let php_sql_query=1
        let php_htmlInString=1
        let php_folding=1
        autocmd FileType php setlocal omnifunc=phpcomplete#CompletePHP
    "

    " Python:
        " auto indent after "def foo():<CR>"
        let python_highlight_all=1
        let python_highlight_exceptions=0
        let python_highlight_builtins=0
        autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
        let g:pydoc_cmd = "/usr/bin/pydoc"
        autocmd FileType python set complete+=k~/.vim/syntax/python.vim isk+=.,(
        autocmd FileType python setlocal formatoptions+=croq
            \ cinwords=if,elif,else,for,while,try,except,finally,def,class,with
        "autocmd BufNewFile *.py :call AutoHead()
    "

    " Ruby:
        autocmd FileType ruby setlocal et sw=2 ts=2 sts=2
        "autocmd BufNewFile *.rb call AutoHead()
    "

    " Vim Txt Vimwiki:
        autocmd FileType {vim,txt,vimwiki} setlocal et ts=4 sw=4 sts=4
    "

    " C:
        autocmd FileType c set omnifunc=ccomplete#Complete
    "

    " Yaml:
    autocmd FileType yaml setlocal et ts=2 sw=2 sts=2

    augroup END
endif

" }}}
" <<----------------------------------------------------------------------------
