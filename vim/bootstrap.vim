" --------------------------------------------------------------------------->>
" VIM Initialize: " {{{
filetype off
silent! call pathogen#runtime_append_all_bundles()
silent! call pathogen#helptags()
filetype plugin indent on
" }}}

runtime! config/autocmd.vim
runtime! config/userinfo.vim
runtime! config/utils.vim
runtime! config/settings.vim
runtime! config/plugins.vim
runtime! config/mappings.vim
"runtime! config/color.vim
"runtime! config/filetype.vim
"runtime! config/autocmd_ft.vim
" <<---------------------------------------------------------------------------
