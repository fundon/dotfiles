" --------------------------------------------------------------------------->>
" Term: " {{{
if &term =~ 'xterm' || $TERM =~ 'xterm-256color'
    if has('terminfo')
	set ttyfast
        set t_Co=256
        let &t_SI = "\<Esc>]12;lightgreen\x7"
        let &t_EI = "\<Esc>]12;RoyalBlue1\x7"
    endif
endif
" }}}

" GUI: " {{{
if has('gui_running')
    set guitablabel=%{GuiTabLabel()}
    set toolbar=icons
    set toolbariconsize=tiny
    " Toggle Menu and Toolbar
    map <silent> <F11> :if &guioptions =~# 'T' <Bar>
        \set guioptions-=T <Bar>
        \set guioptions-=m <bar>
        \else <Bar>
        \set guioptions+=T <Bar>
        \set guioptions+=m <Bar>
        \endif<CR>
    " No menus and no toolbar
    set guioptions-=m
    set guioptions-=T
    set guioptions-=b

    if has('gui_gtk2')
        set guifont=Monaco\ 10
        "set guifontwide=YaHei\ Mono\ 10
        set guifontwide=WenQuanYi\ Micro\ Hei\ 12
        set linespace=2
        "set columns=84
        "set lines=30
        "sudo apt-get install wmctrl
        autocmd GUIEnter * call MaximizeWindow()
    elseif g:iswin
        set guifont=Monaco:h10:cANSI
        set guifontwide=YaHei\ Mono:h10
        autocmd GUIEnter * simalt ~x
    endif

endif

if has('mouse')
    set mousehide
    set mouse=a
    set ttymouse=xterm2
endif

" }}}
" <<---------------------------------------------------------------------------

" --------------------------------------------------------------------------->>
" Global Settings: " {{{
set nocompatible
set lazyredraw
set viewoptions=folds,options,cursor,unix,slash
set modelines=0

set helplang=cn,en
set langmenu=zh_CN.UTF-8
language message zh_CN.UTF-8

syntax enable
syntax on

"set anti
set nobomb
set formatoptions+=mm
set fileformat=unix
set fileformats=unix,dos,mac
set termencoding=utf-8
set encoding=utf-8
set fileencoding=utf-8
set fileencodings=utf-8,ucs-bom,gb18030,gbk,gb2312,big5,cp936,chinese,euc-jp,euc-kr,latin1
set autoread
set ambiwidth=double
if g:iswin
    source $vimruntime/delmenu.vim
    source $vimruntime/menu.vim
endif

set colorcolumn=81
set cursorline
set number

"set notitle
set title
set titleold="Terminal"
set titlestring=%F\ -\ Vim
set titlelen=95

" Tabs
set tabpagemax=15
set showtabline=2
set bufhidden=hide
set tabline=%!MyTabLine()
set hidden

" info
set viminfo=!,'100,\"100,:20,<50,s10,h,n~/.viminfo
set history=300
set updatetime=1000

" Edit
set autoindent smartindent
set expandtab smarttab
set tabstop=4
set shiftwidth=4
set softtabstop=4
set modeline
set backspace+=indent,eol,start
set linebreak
set showbreak=...
set breakat=\ \ ;:,!?
set linespace=2
set wrap
set whichwrap+=b,s,<,>,[,],h,l
set iskeyword+=_,$,@,%,#,-
set commentstring=#%s
set formatprg=fmt
set sps=best,10
set shiftround

" search
set incsearch hlsearch ignorecase smartcase showmatch
set wrapscan
set matchtime=3
set matchpairs+=(:),{:},[:],<:>
set magic
set virtualedit=block

" error
set vb t_vb=
set noerrorbells
set novisualbell

" 于 windows 共享剪切板
set clipboard+=unnamed

" diff mode & scrollbind
if &diff && has('cursorbind')
    "set cursorbind
    set scrollbind
endif

" cmd
set autowrite
set autochdir
set wildmenu
set wildchar=9
set wildmode=list:longest
set cmdheight=1
set wildignore+=*.swp,*.svn,*.git,cvs,*.dll,*.exe,*.o,*.obj,*.pyc,*.pyo,*.png,*.gif,*.jpg,*.jpeg,*.bmp,*.tiff
set report=0

" status line
set ruler
set showcmd
set showmode
set laststatus=2
"set statusline=%<%f\ %h%m%r%{fugitive#statusline()}%=%-14.(%l,%c%v%)\ %p
"set statusline=%<%h%m%r\ %f%=[%{&filetype},%{&fileencoding},%{&fileformat}]%{fugitive#statusline()}%k\ %-14.(%l/%l,%c%v%)\ %p
"set statusline=%<%h%m%r\ %f%=[%{strlen(&filetype)?&filetype:'none'},%{&fileencoding},%{&fileformat}]%k\ %-14.(%l/%l,%c%v%)\ %p
"set statusline+=%#warningmsg#
"set statusline+=%{syntasticstatuslineflag()}
"set statusline+=%*
set statusline=%F%m%r%h%w%=(%{&ff}/%Y/%{&fileencoding})\ (line\ %l\/%L,\ col\ %c)

" bakup files
set nobackup
set noswapfile
set nowritebackup

" undo settings
if v:version >= 703
    if has('persistent_undo')
        set undodir=$MYVIM./undofiles
        set undofile
    endif
endif

" fold
set foldmethod=marker
set foldmarker={{{,}}}
set foldnestmax=3
set foldenable
set fillchars=fold:⋯
set foldtext=MyFoldText()

" complete
set complete=.,w,b,k,t,i
set completeopt=longest,menuone

" window
set equalalways
set splitbelow splitright
set sessionoptions+=resize

" vertical / horizontal scroll off settings
set scrolloff=3
set sidescrolloff=7
set sidescroll=1
set noscrollbind

" list
" ctr-v u25b8 = ▸
" http://www.fileformat.info/info/unicode/font/consolas/grid.htm
set listchars=tab:▸\ ,eol:¬

" }}}
" <<---------------------------------------------------------------------------
