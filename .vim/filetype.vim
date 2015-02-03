if exists("did_load_filetypes")
  finish
endif
let did_load_filetypes = 1

" Line continuation is used here, remove 'C' from 'cpoptions'
let s:cpo_save = &cpo
set cpo&vim

" Currently finds compressed files.
if !exists("g:ft_ignore_pat")
  let g:ft_ignore_pat = '\.\(Z\|gz\|bz2\|zip\|tgz\|xz\)$'
endif

augroup filetypedetect

  au BufReadPost * syntax sync fromstart

  au BufNewFile,BufRead *
    \ if !did_filetype() && expand("<amatch>") !~ g:ft_ignore_pat
    \ | ru! scripts.vim | endif

  au StdinReadPost * if !did_filetype() | ru! scripts.vim | endif

  au BufEnter COMMIT_EDITMSG set textwidth=72

  runtime! ftdetect/*.vim

augroup END

augroup ft_c
  au!
  au BufNewFile,BufRead *.c,*.h setf c
  au FileType c setlocal foldmethod=marker foldmarker={,} omnifunc=ccomplete#Complete
augroup END

augroup ft_ruby
  au!
  au BufNewFile,BufRead *.rb setf ruby
augroup END

augroup ft_css
  au!
  au BufNewFile,BufRead *.css setf css
  au BufNewFile,BufRead *.less setf less
  au FileType css,less setl foldmethod=marker foldmarker={,} omnifunc=csscomplete#CompleteCSS iskeyword+=-

  " Use <leader>S to sort properties.  Turns this:
  "
  "     p {
  "         width: 200px;
  "         height: 100px;
  "         background: red;
  "
  "         ...
  "     }
  "
  " into this:

  "     p {
  "         background: red;
  "         height: 100px;
  "         width: 200px;
  "
  "         ...
  "     }
  "au BufNewFile,BufRead *.less,*.css nnoremap <buffer> <localleader>S ?{<CR>jV/\v^\s*\}?$<CR>k:sort<CR>:noh<CR>
  " Make {<cr> insert a pair of brackets in such a way that the cursor is correctly
  " positioned inside of them AND the following code doesn't get unfolded.
  "au BufNewFile,BufRead *.less,*.css inoremap <buffer> {<cr> {}<left><cr><space><space>.<cr><esc>kA<bs>
augroup END

augroup ft_html
  au!
  au BufNewFile,BufRead *.html,*.mustache,*.ejs setf html
  au FileType xml setl omnifunc=xmlcomplete#CompleteTags
  au FileType html setl omnifunc=htmlcomplete#CompleteTags
  au FileType html setl foldmethod=manual
  au FileType html nnoremap <buffer> <localleader>f Vatzf
  au FileType html nmap <buffer> <localleader>t viikojozf
  au FileType html nnoremap <buffer> <localleader>= Vat=
  let g:javascript_enable_domhtmlcss = 1
  let g:xml_use_xhtml = 1
augroup END

augroup ft_javascript
  au!
  au BufNewFile,BufRead *.{js,javascript,es,jsx,json} setf javascript
  au FileType javascript setl omnifunc=jscomplete#CompleteJS
  au fileType javascript setl foldmethod=marker foldmarker={,}
  au FileType javascript call s:Dict()
  " Make {<cr> insert a pair of brackets in such a way that the cursor is correctly
  " positioned inside of them AND the following code doesn't get unfolded.
  au FileType javascript inoremap <buffer> {<cr> {}<left><cr><space><space>.<cr><esc>kA<bs>
augroup END

augroup ft_markdown
  au!
  au BufNewFile,BufRead *.{md,mkd,mark,markdown} setf mkd
  au FileType mkd setl foldlevel=1 omnifunc=htmlcomplete#CompleteTags
  " Use <localleader>1/2/3 to add headings.
  au FileType markdown nnoremap <buffer> <localleader>1 yypVr=:redraw<cr>
  au FileType markdown nnoremap <buffer> <localleader>2 yypVr-:redraw<cr>
  au FileType markdown nnoremap <buffer> <localleader>3 mzI###<space>`zllll <ESC>
augroup END

augroup ft_nginx
  au!
  au BufNewFile,BufRead /usr/local/etc/nginx/*  setf nginx
  au BufNewFile,BufRead *.nginx                 setf nginx
  au FileType nginx setl foldmethod=marker foldmarker={,}
augroup END

augroup ft_puppet
  au!
  au Filetype puppet setl foldmethod=marker
  au Filetype puppet setl foldmarker={,}
augroup END

augroup ft_python
  au!
  au BufNewFile,BufRead *.{py} setf python
  au FileType python setl define=^\s*\\(def\\\\|class\\)
  au FileType man nnoremap <buffer> <cr> :q<cr>
  " Jesus tapdancing Christ, built-in Python syntax, you couldn't let me
  " override this in a normal way, could you?
  au FileType python if exists("python_space_error_highlight") | unlet python_space_error_highlight | endif
  au FileType python iabbrev <buffer> afo assert False, "Okay"
augroup END

augroup ft_quickfix
  au!
  au FileType qf setl colorcolumn=0 nolist nocursorline nowrap tw=0
augroup END

augroup ft_ruby
  au!
  au FileType ruby setl foldmethod=syntax
augroup END

augroup ft_make
  au!
  au BufNewFile,BufRead Makefile,makefile setf make
  au FileType make set noet
augroup END

augroup ft_php
  au!
  au FileType php call s:Dict()
augroup END

augroup ft_sh
  au!
  au BufNewFile,BufRead *.sh,*.zsh,.zshrc setf sh
  au FileType sh call s:Dict()
augroup END

augroup ft_text
  au!
  au BufNewFile,BufRead *.txt,*.text setf text
augroup END

augroup ft_sql
  au!
  au BufNewFile,BufRead *.sql setf sql
augroup END

augroup ft_lua
  au!
  au BufNewFile,BufRead *.lua setf lua
augroup END

augroup ft_vim
  au!
  au BufNewFile,BufRead *.vim,vimrc,gvimrc setf vim
  au BufWritePost $MYVIMRC source <afile>
  au BufWritePost .gvimrc source <afile>
  au FileType vim setl foldmethod=marker
  au FileType help setl textwidth=78
  au BufWinEnter *.txt if &ft == 'help' | wincmd L | endif
augroup END

au filetypedetect BufNewFile,BufRead,StdinReadPost *
  \ if !did_filetype() && expand("<amatch>") !~ g:ft_ignore_pat
  \    && (getline(1) =~ '^#' || getline(2) =~ '^#' || getline(3) =~ '^#'
  \ || getline(4) =~ '^#' || getline(5) =~ '^#') |
  \   setf conf |
  \ endif

fun! s:Dict()
  if empty(matchstr(&dictionary, &filetype))
    let &dictionary = substitute($MYVIM . '/dict/@.dict,' . &dictionary, '@', &filetype, '')
  endif
endfun

" Restore 'cpoptions'
let &cpo = s:cpo_save
unlet s:cpo_save