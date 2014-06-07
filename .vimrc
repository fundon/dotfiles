" Use Vim settings, rather then Vi settings. This setting must be as early as
" possible, as it has side effects.
set nocompatible

" Use the OS clipboard by default (on versions compiled with `+clipboard`)
set clipboard=unnamed
" Change mapleader
let mapleader=","
let maplocalleader = '  '
" Enhance command-line completion
set wildmenu
set wildmode=longest,list
" Allow cursor keys in insert mode
set esckeys
" Allow backspace in insert mode
set backspace=indent,eol,start
" Optimize for fast terminal connections
set ttyfast
" Use UTF-8 without BOM
set encoding=utf-8 nobomb
" Don’t add empty newlines at the end of files
set binary
set noeol

set nobackup
set nowritebackup 
set noswapfile
set history=50
set undodir=$MYVIM/undo
set undoreload=10000
set undofile

" show the cursor position all the time
set ruler
" Always display the status line
set laststatus=2
" Automatically :write before running commands
set autowrite
" Automatically :change directory
set autochdir

"in order to switch between buffers with unsaved change
set hidden

" Respect modeline in files
set modeline
set modelines=5

" Enable per-directory .vimrc files and disable unsafe commands in them
set exrc
set secure
" Enable line numbers
set number
" Enable syntax highlighting
syntax on
" Highlight current line
set cursorline

" Make tabs as wide as two spaces
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set smarttab

" Highlight searches
set hlsearch
" Ignore case of searches
set ignorecase
" Add the g flag to search/replace by default
set gdefault
" Highlight dynamically as pattern is typed
set incsearch
set smartcase

" Show “invisible” characters
set lcs=tab:▸\ ,trail:·,eol:¬,nbsp:_
set list

" Enable mouse in all modes
set mouse=a
" Disable error bells
set noerrorbells
" Don’t reset cursor to start of line when moving around.
set nostartofline

" Don’t show the intro message when starting Vim
set shortmess=atI
" Show the current mode
set showmode
" Show the filename in the window titlebar
set title
" Show the (partial) command as it’s being typed
set showcmd

" Start scrolling three lines before the horizontal window border
set scrolloff=3

" Formatting
set ft+=o
set fo-=r
set fo-=t

" Statusline
set statusline=%<%f\ 
set stl+=[%{&ff}]
set stl+=%y%m%r%=
set stl+=%-14.(%l,%c%V%)\ %P

" Switch syntax highlighting on, when the terminal has colors
" Also switch on highlighting the last used search pattern.
if (&t_Co > 2 || has("gui_running")) && !exists("syntax_on")
  syntax on
endif

" Set $MYVIM variable
let $MYVIM  = expand('~/.vim')

filetype off

" Config neobundle
let $NEOBUNDLE_DIR = $MYVIM . '/.bundles'
set runtimepath+=$NEOBUNDLE_DIR/neobundle
call neobundle#rc(expand($NEOBUNDLE_DIR))
source ~/.vim/bundle

filetype on

" Enable syntax color.

syntax enable
" Installation check.
NeoBundleCheck
