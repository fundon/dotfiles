" General " {{{

set timeoutlen=500
set clipboard+=unnamed
set pastetoggle=<F3>

set tags=./tags;$HOME

set modeline
set modelines=5

set autowrite
set autoread
set autochdir

set history=256
set undoreload=256
set undofile

set hidden

" Backup
set nobackup
set nowritebackup
set noswapfile
let &undodir=g:KF#MYVIM . "/tmp/und"

" Search
set magic
set hlsearch
set smartcase
set incsearch
set wrapscan

set matchpairs+=<:>

let g:is_posix = 1
" "}}}

" Formatting " {{{
set fo+=o
set fo-=r
set fo-=t

" Edit
set autoindent
set cindent
set smartindent
set shiftround
set backspace=indent,eol,start
set showmatch
set display=lastline

" Tab
set smarttab
set expandtab
set shiftwidth=4
set tabstop=4
set softtabstop=4

set nowrap
" "}}}

" Visual "{{{
syntax on

set mouse=a
set mousehide

set matchtime=2

set linebreak
set nonumber
set textwidth=80
set cursorline
set colorcolumn=+1

set wildmenu
set wildmode=longest:full,full

set completeopt+=preview

" Bell
set novisualbell
set noerrorbells
set vb t_vb=

set laststatus=2
set shortmess=atI
set showcmd

" Scroll
set scrolloff=3
set sidescrolloff=3
if &diff && has('cursorbind')
    set scrollbind
endif

set statusline=%1*%F%m%r%h%w
set stl+=%2*%=(%{&ff}/%Y/%{&fenc})
set stl+=%3*\ (line\ %l\/%L,\ col\ %c,\ 0x%04.4B)\ %P

set foldenable
set foldmethod=marker
set foldlevel=100

set foldopen=block,hor,tag
set foldopen+=percent,mark
set foldopen+=quickfix

set equalalways
set splitbelow
set splitright

"set list
"set listchars=tab:\ ·,eol:¬
"set listchars+=trail:·
"set listchars+=extends:»,precedes:«

set helplang=cn,en

" Encoding
set nobomb
set fileformat=unix
set fileformats=unix,mac,dos
set encoding=utf-8
set termencoding=utf-8
set fileencoding=utf-8
set fileencodings=ucs-bom,utf-8,gbk,gb2312
set fencs+=gb18030,big5,cp936,chinese
set fencs+=euc-jp,euc-kr,latin1
set ambiwidth=double
language messages zh_CN.utf-8

" "}}}
