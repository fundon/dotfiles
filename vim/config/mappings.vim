" --------------------------------------------------------------------------->>
" Keyboard Mappings: " {{{

" Map Leader:
let mapleader=","
let g:mapleader=","
" map Q to something useful
noremap  Q gq
" Yank from the cursor to the end of the line, to be consistent with C and D.
nnoremap Y y$
nnoremap / /\v
vnoremap / /\v

" Quick Keys:
inoremap jj <Esc>
inoremap uu _
inoremap hh =>
inoremap aa @

" prev section "[[", next "]]"

" Quickly open the vim config file in a new tab.
noremap <Leader>v :tabedit $MYVIMRC<CR>
" leader P copies full file path or filename to clipboard
noremap <Leader>p :let @+=expand('%:p')<CR>:echo "copied" expand('%:p')<CR>
noremap <Leader>cp :let @+=@%<CR>:echo "copied" @%<CR>
" Opens an edit command with the path of the currently edited file filled in
noremap <Leader>e :e <C-R>=expand("%:p:h") . "/" <CR>
" Opens a tab edit command with the path of the currently edited file filled in
noremap <Leader>te :tabe <C-R>=expand("%:p:h") . "/" <CR>
" Inserts the path of the currently edited file into a command
" Ctrl+P
cmap <C-P> <C-R>=expand("%:p:h") . "/" <CR>
" Clean whitespace
map <Leader>W :%s/\s\+$//<cr>:let @/=''<CR>

" Fast Save:
noremap <Leader>w :w!<CR>:echo "saved" expand('%:p')<CR>
" Sudo to write
cmap w!! w !sudo tee % >/dev/null

" Toggle Number:
noremap <F3> :call ToggleNumber()<CR>

" Remove trailing whitespaces and ^M chars
noremap <F6> :call RemoveSpaces()<CR>

set pastetoggle=<F7>

" Tabs Or Buffers:
noremap <C-t> :tabnew<CR>
noremap to :tabnew<CR>
noremap tc :tabclose<CR>
"noremap <C-w> :tabclose<CR>
noremap tn :tabnext<CR>
noremap tp :tabprevious<CR>
noremap tf :tabfirst<CR>
noremap tl :tablast<CR>
noremap ts :tabs<CR>
" Delete buffer
noremap <Leader>d :bd<CR>
" Delete buffer and file
noremap <Leader>D :!rm %<CR>:bd!<CR>

" allow moving with h/j/k/l in insert mode
inoremap <A-h> <Left>
inoremap <A-j> <Down>
inoremap <A-k> <Up>
inoremap <A-l> <Right>

" Move Lines:
noremap <C-Up> mz:m-2<CR>`z
noremap <C-Down> mz:m+<CR>`z
"inoremap <C-j> mz:m+<CR>`z
"inoremap <C-k> mz:m-2<CR>`z
"vnoremap <C-k> mz:m-2<CR>`z
"vnoremap <C-j> mz:m+<CR>`z


" Indent Tab:
noremap <Tab> v>
noremap <s-tab> v<
vnoremap <tab> >gv
vnoremap <s-tab> <gv
"inoremap <tab> <ESC> >gv
"inoremap <s-tab> <ESC> <gv

" Past:
noremap + "+
vnoremap <C-X> "+x
vnoremap <C-C> "+y
"inoremap <C-V> <ESC>:set paste<CR>mui<C-R>+<ESC>mv'uV'v=:set nopaste<CR>

" Quit window on <leader>q
nnoremap <Leader>q :q<CR>
" Vertical And Horizontal Split:
noremap <leader>vw :vsp^m^w^w<cr>
noremap <Leader>hw :split^M^W^W<CR>
noremap <Leader>qq :q<CR>
" Switch windows with Ctrl + a movement key
nmap <silent> <C-k> :wincmd k<CR>
nmap <silent> <C-j> :wincmd j<CR>
nmap <silent> <C-h> :wincmd h<CR>
nmap <silent> <C-l> :wincmd l<CR>
"nmap <silent> <C--> :resize -5<CR>
"nmap <silent> <C-=> :resize +5<CR>
"nmap <silent> <C-]> :vertical resize +5<CR>
"nmap <silent> <C-[> :vertical resize -5<CR>


" Clear Search Highlight:
" Toggle Search
"noremap <F6> <S-*>
noremap <F4> :set nohls!<CR>:echo "Toogle Highlight Search."<CR>
inoremap <C-L> <C-O>:set nohls!<CR>
noremap <Leader>l :let @/=""<CR>:echo "Cleared search register."<CR>

" List:
noremap <F2> :set list!<CR>

" Fold toggling with <Space> if a fold exists at the cursor.
nnoremap <silent> <Space> @=(foldlevel('.')?'za':'l')<CR>
vnoremap <Space> zf

" Toggle solarized
noremap <F7> :call ToggleBGG() <CR>

" }}}
" <<---------------------------------------------------------------------------
