" vim: set foldmethod=marker foldlevel=0 nomodeline:
" https://vimawesome.com/

" Vim 8 defaults
unlet! skip_defaults_vim
silent! source $VIMRUNTIME/defaults.vim

let s:darwin = has('mac')

silent! if plug#begin('~/.vim/plugged')

if s:darwin
  let g:plug_url_format = 'git@github.com:%s.git'
else
  let $GIT_SSL_NO_VERIFY = 'true'
endif

" -- Navigation
Plug 'christoomey/vim-tmux-navigator'
Plug 'majutsushi/tagbar'
Plug 'mhinz/vim-startify'
Plug 'scrooloose/nerdtree'
Plug 'simnalamburt/vim-mundo'
Plug 'itchyny/lightline.vim'
Plug 'machakann/vim-highlightedyank'
Plug 'tpope/vim-fugitive'
Plug 'junegunn/gv.vim'
Plug 'junegunn/limelight.vim'
Plug 'rhysd/git-messenger.vim'
"Plug 'liuchengxu/vim-which-key', { 'on': ['WhichKey', 'WhichKey!'] }
Plug 'segeljakt/vim-silicon'

" -- Themes
Plug 'lifepillar/vim-solarized8'
Plug 'connorholyday/vim-snazzy'
Plug 'srcery-colors/srcery-vim'
Plug 'arcticicestudio/nord-vim'
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'morhetz/gruvbox'
Plug 'mhinz/vim-grepper', { 'on': ['Grepper', '<plug>(GrepperOperator)'] }

Plug 'mhinz/vim-signify'
set updatetime=100

Plug 'sonph/onehalf', {'rtp': 'vim/'}

" -- Editing
Plug 'gcmt/wildfire.vim'
Plug 'junegunn/vim-easy-align'
Plug 'machakann/vim-sandwich'
Plug 'terryma/vim-multiple-cursors'
Plug 'scrooloose/nerdcommenter'
if has('nvim')
  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
  Plug 'roxma/nvim-yarp'
  Plug 'roxma/vim-hug-neovim-rpc'
  let g:deoplete#enable_at_startup = 1
endif
"Plug 'wellle/context.vim'

" -- Languages
Plug 'dag/vim-fish'
Plug 'honza/dockerfile.vim'
Plug 'mattn/emmet-vim'
Plug 'pangloss/vim-javascript'
Plug 'plasticboy/vim-markdown'
Plug 'rust-lang/rust.vim'
Plug 'lifepillar/pgsql.vim'
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'vim-scripts/nginx.vim'
Plug 'editorconfig/editorconfig-vim'
Plug 'leafgarland/typescript-vim'

Plug 'prettier/vim-prettier', {
  \ 'do': 'yarn install',
  \ 'for': [
    \ 'javascript',
    \ 'typescript',
    \ 'css',
    \ 'less',
    \ 'scss',
    \ 'json',
    \ 'graphql',
    \ 'markdown',
    \ 'vue',
    \ 'lua',
    \ 'php',
    \ 'python',
    \ 'ruby',
    \ 'html',
    \ 'swift' ] }

set rtp+=/usr/local/opt/fzf
call plug#end()
endif

" -- Plugin Settings
let g:rustfmt_autosave = 1
let g:rust_clip_command = 'pbcopy'
let g:rustfmt_options = '--edition 2018'

let g:prettier#config#semi = 'false'
let g:prettier#config#single_quote = 'true'
let g:prettier#config#bracket_spacing = 'true'

" Enable persistent undo so that undo history persists across vim sessions
set undofile
set undodir=~/.vim/undo

" -- Editor

let mapleader      = ' '
let maplocalleader = ','

augroup vimrc
  autocmd!
augroup END

set nu
set nuw=5
set mouse=a
set autoindent
set smartindent
set lazyredraw
set laststatus=2
set showcmd
set visualbell
set backspace=indent,eol,start
set timeoutlen=500
set whichwrap=b,s
set shortmess=aIT
set hlsearch " CTRL-L / CTRL-R W
set incsearch
set hidden
set ignorecase smartcase
set wildmenu
set wildmode=full
set tabstop=2
set shiftwidth=2
set shiftround
set expandtab smarttab
set textwidth=80
set colorcolumn=+1
set scrolloff=5
set encoding=utf-8
set list
set listchars=tab:\|\ ,
set virtualedit=block
set nojoinspaces
set diffopt=filler,vertical
set autoread
if has('osx')
  set clipboard=unnamed
else
  set clipboard=unnamedplus
endif
set foldlevelstart=99
set grepformat=%f:%l:%c:%m,%f:%l:%m
set completeopt=menuone,preview
set nocursorline
set nrformats=hex
set splitbelow
set splitright
silent! set cryptmethod=blowfish2

if has('termguicolors')
  let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
  let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
  set termguicolors
endif

set pastetoggle=<F9>
set modelines=2

let g:SnazzyTransparent = 1
let g:lightline = {
\ 'colorscheme': 'snazzy',
\ }
colorscheme snazzy

" Rust
let g:rustfmt_autosave = 1

" Git
autocmd Filetype gitcommit setlocal spell textwidth=72

"nnoremap <silent> <leader>      :<c-u>WhichKey '<Space>'<CR>
"nnoremap <silent> <localleader> :<c-u>WhichKey  ','<CR>

if has('autocmd')
  autocmd BufReadPost *
    \ if line("'\"") > 0 && line ("'\"") <= line("$") |
    \   exe "normal g'\"" |
    \ endif
endif

" Links
" https://github.com/mhinz/vim-galore
