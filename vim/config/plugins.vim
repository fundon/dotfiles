" --------------------------------------------------------------------------->>
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
noremap <F9> :TlistToggle<CR>
noremap <F8> :!/usr/bin/ctags-exuberant -R --c++-kinds=+p --fields=+iaS --extra=+q .<CR>
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

" }}}
" <<---------------------------------------------------------------------------
