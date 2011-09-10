" Key mappings " {{{
let mapleader = ','

" Arrow keys
nnoremap Q gq
nnoremap j gj
nnoremap k gk
vnoremap j gj
vnoremap k gk

" Useful Shortcuts
vnoremap <leader>c "+y
vnoremap <leader>x "+d
nnoremap <leader>v "+P
vnoremap <leader>v "+p
nnoremap <leader>a ggVG

" Backspace in Visual mode deletes selection
vnoremap <BS> d

" Quickly edit/reload the vimrc file
nnoremap <silent><leader>ev :tabedit $MYVIMRC<cr>
nnoremap <silent><leader>sv :source $MYVIMRC<cr>

" Sudo to write
cmap w!! w !sudo tee % > /dev/null

" Esc and Save
inoremap <leader>, <esc>
vnoremap <leader>, <esc>
nnoremap <leader>q :q!<esc>
nnoremap <c-s> :update<cr>

" Search
nnoremap <silent><leader><space> :set nohls!<cr>
nnoremap <silent><leader>l :let @/=""<cr>
vnoremap * y/<c-r>=escape(@", '\\/.*$^~[]')<cr><cr>
vnoremap # y?<c-r>=escape(@", '\\/.*$^~[]')<cr><cr>

" Command Mode like terminal command
cnoremap <c-a> <home>
cnoremap <c-e> <end>
cnoremap <c-p> <up>
cnoremap <c-f> <right>
cnoremap <c-n> <down>
cnoremap <c-b> <left>
cnoremap <c-d> <del>

" Cursor
" <s-i> line begin and insert
nnoremap L $

" Map Y to act like D and C, i.e. to yank until EOL, rather than act as yy,
" which is the default
nnoremap Y y$

" Move Lines
noremap <c-up> mz:m-2<cr>`z
noremap <c-down> mz:m+<cr>`z

" Tabs
nnoremap <leader>lt :tabs<cr>
nnoremap <leader>tt :tabnew<cr>
nnoremap <leader>n :silent tabprev<cr>
nnoremap <leader>m :silent tabnext<cr>
nnoremap <leader>tf :silent tabfirst<cr>
nnoremap <leader>tl :silent tablast<cr>

" Move Windoes
nnoremap <c-k> <c-w>k
nnoremap <c-l> <c-w>l
nnoremap <c-j> <c-w>j
nnoremap <c-h> <c-w>h

" <c-0> rest
map <c-kPlus> <c-w>+
map <c-kMinus> <c-w>-
map <s-left> <c-w><
map <s-right> <c-w>>

" Indent
noremap <tab> v>
noremap <s-tab> v<
vnoremap <tab> >gv
vnoremap <s-tab> <gv

" ListChar
noremap <silent><F4> :set invlist<cr>

" Line Number
noremap <silent><F2> :if &nu\|se rnu\
            \|elsei &rnu\|se rnu!\
            \|el\|se nu\|endif<cr>

" Trim trailling whitespace
noremap <silent><F7> :%s/\s\+$//g<cr>``

" normal: 3id, insert ddd. :help .
" "}}}
