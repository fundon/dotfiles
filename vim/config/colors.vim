" <<---------------------------------------------------------------------------
" Cursor Column: {{{
"highlight colorcolumn ctermbg=lightgreen ctermfg=black guifg=black guibg=lightgreen
"highlight cursorline  ctermbg=black      guibg=black
" }}}

" Search: {{{
"highlight Search term=bold ctermbg=yellow ctermfg=red guibg=yellow guifg=red
" }}}

" StatusLine: {{{
"highlight Statusline cterm=none ctermbg=black guifg=lightgreen guibg=black
" }}}

" Conceal: {{{
"highlight Conceal guibg=red guifg=red
" }}}

" Number: {{{
"highlight LineNr cterm=none ctermbg=black ctermfg=darkgray
" }}}

" Tab: {{{
"highlight TabLine     cterm=none ctermfg=grey       ctermbg=darkgray guifg=gray  guibg=black
"highlight TabLineSel  cterm=bold,underline ctermfg=darkgray      ctermbg=black    guifg=white guibg=black
"highlight TabLineFill cterm=none ctermfg=lightgray  ctermbg=black    guifg=black guibg=black
" }}}

"Invisible Character Colors: {{{
"highlight NonText guifg=#4a4a59
"highlight SpecialKey guifg=#4a4a59
" }}}

" Fold: {{{
"highlight Folded cterm=bold ctermbg=DarkGray cterm=none ctermfg=4
"highlight FoldColumn cterm=bold ctermbg=DarkGray cterm=none ctermfg=4
" }}}

" Visual Mode: {{{
"highlight Visual ctermbg=7 ctermfg=4
" }}}

" Dictionary Pmenu: {{{
"highlight Pmenu ctermbg=7 ctermfg=0
"highlight PmenuSel ctermbg=Yellow ctermfg=0
" }}}

" Diff: {{{
highlight DiffAdd cterm=none ctermbg=DarkGray
highlight DiffDelete cterm=none ctermbg=DarkGray
highlight DiffChange cterm=none ctermbg=none
highlight DiffText cterm=none ctermbg=DarkGray
" }}}

" IP Addresses: {{{
" Matching of IP-Addresses Highlight in yellow
highlight ipaddr term=bold ctermfg=yellow guifg=yellow
" highlight ipaddr ctermbg=green guibg=green
match ipaddr /\(\(25\_[0-5]\|2\_[0-4]\_[0-9]\|\_[01]\?\_[0-9]\_[0-9]\?\)\.\)\{3\}\(25\_[0-5]\|2\_[0-4]\_[0-9]\|\_[01]\?\_[0-9]\_[0-9]\?\)/
" }}}

" Overlength: {{{
"highlight OverLength ctermbg=red ctermfg=white guibg=#592929
"match OverLength /\%81v.*/
" }}}

" Whitespace: {{{
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/
" }}}
" <<---------------------------------------------------------------------------

