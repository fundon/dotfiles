set rtp+=~/.vim/bundle/vundle
call vundle#rc()

com -nargs=1 -bang -complete=custom,Bithub Bithub Bundle<bang><args>
fun Bithub(A,L,P)
    return 'git://github.com/' . a:A
endfun

" My Bundles: {
Bithub 'gmarik/vundle'

" Explorer:
Bithub 'scrooloose/nerdtree'
nnoremap <silent><F10> :NERDTreeToggle<cr>

" Comment:
Bithub 'scrooloose/nerdcommenter'
nnoremap <c-/> :NERDCommenterToggle<cr>

" Task:
Bithub 'framallo/taskwarrior.vim'

" Search Tools:
Bithub 'mileszs/ack.vim'
let g:ackprg="ack-grep -H --nocolor --nogroup --column"

" Quoting Or Parenthesizing:
Bithub 'tpope/vim-surround'

" Syntax Files:
Bithub 'plasticboy/vim-markdown'
Bithub 'pangloss/vim-javascript'
Bithub 'vim-scripts/jQuery'
Bithub 'tpope/vim-git'
Bithub 'othree/html5.vim'

" Color Schemes:
Bithub 'tomasr/molokai'
Bithub 'vim-scripts/robokai'
Bithub 'tpope/vim-vividchalk'
Bithub 'wgibbs/vim-irblack'
Bithub 'altercation/vim-colors-solarized'

" }
