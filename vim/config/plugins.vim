" ---------------------------------------------------------------------------->>
" Plugins: " {{{

" NERDTree:
noremap <F10> :NERDTreeToggle<CR>
let NERDTreeHijackNetrw = 1 " User instead of Netrw when doing an edit /foobar
let NERDTreeMouseMode = 1 " Single click for everything
let NERDTreeSortOrder = []
let NERDTreeShowBookmarks = 1
let NERDTreeChDirMode = 2
let NERDTreeIgnore = ['\~$','.DS_Store', '\.svn$', '\.git', '\.pyc$', '\.mp3',
    \'\.jpg', '\.gif','\.swf', '\.zip', '\.pdf', '\.gz', '\.bz2', '\.dmg',
    \'\.doc', '\.tar', '\.png', '\.rtf']

" NERDComment:
" Use Control-/ to toggle comments
nmap <C-?> :call NERDComment(0, "toggle")<CR>
vmap <C-?> <ESC>:call NERDComment(1, "toggle")<CR>

" Taglist:
" " CTags
"map <Leader>rt :!ctags --extra=+f -R *<CR><CR>
"noremap <F9> :TlistToggle<CR>
noremap <F9> :TagbarToggle<CR>
noremap <F8> :!/usr/bin/ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .<CR>
set tags+=tags;$HOME
let g:ctags_statusline = 1
let generate_tags = 1
let Tlist_Ctags_Cmd = "ctags"
let Tlist_Show_One_File = 1
let Tlist_Exit_OnlyWindow = 1
let Tlist_Use_Right_Window = 1
let Tlist_File_Fold_Auto_Close = 1
let Tlist_GainFocus_On_ToggleOpen = 1
let Tlist_Enable_Fold_Column = 0
let Tlist_Auto_Update = 1
let Tlist_Compact_Format = 1
let Tb_ForceSyntaxEnable = 1

let tlist_vimwiki_settings = 'wiki;h:Headers'
let tlist_html_settings = 'html;h:Headers;o:Objects(ID);c:Classes'
let tlist_xhtml_settings = 'html;h:Headers;o:Objects(ID);c:Classes'
let tlist_css_settings = 'css;c:Classes;o:Objects(ID);t:Tags(Elements)'
let tlist_php_settings = 'php;c:Class;i:Interfaces;d:Constant;f:Function'
let tlist_javascript_settings = 'javascript;f:Function;c:Class;o:Object;m:Method;s:String;a:Array;n:Constant'

" ACK:
let g:ackprg="ack" . ( g:lsb == 'Fedora' ? "" : "-grep" ) . " -H --nocolor --nogroup --column"

" Tabularize:
if exists(":Tabularize")
    nmap <Leader>a= :Tabularize /=<CR>
    vmap <Leader>a= :Tabularize /=<CR>
    nmap <Leader>a: :Tabularize /:\zs<CR>
    vmap <Leader>a: :Tabularize /:\zs<CR>
endif
"inoremap <silent> <Bar>   <Bar><Esc>:call <SID>Align()<CR>a

" Vimwiki
let g:vimwiki_use_mouse = 1
let g:vimwiki_camel_case = 0
let g:vimwiki_CJK_length = 1

" }}}
" <<----------------------------------------------------------------------------
