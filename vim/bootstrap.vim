" Runtime Configs: {{{
set nocompatible

"switch opening and closing html/xml tags or if/elseif/else/end
runtime macros/matchit.vim

if &term =~ 'xterm'
    runtime config/term.vim
endif

runtime config/personal.vim
runtime config/style.vim
runtime config/basic.vim
runtime config/mappings.vim
runtime config/plugins.vim
runtime config/auto.vim
runtime config/command.vim
filetype off

"if g:KF#OS != 3
"    runtime config/vundle.vim
"else
    runtime config/pathogen.vim
"endif

filetype plugin indent on
" }}}
