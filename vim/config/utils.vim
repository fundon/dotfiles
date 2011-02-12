"" <<--------------------------------------------------------------------------
" Functions: " {{{
" Max Window
function! MaximizeWindow()
    silent !wmctrl -r :ACTIVE: -b add,maximized_vert,maximized_horz
endfunction

function! CenterFull()
    on
    vs
    ene
    setl nocul
    setl nonu
    40winc |
    winc l
    vs
    winc l
    ene
    setl nocul
    setl nonu
    40winc |
    winc h
    redr!
endfunction

" Toggle Number
function! ToggleNumber()
    if &number
        setl rnu
    elseif &rnu
        setl nornu
    else
        setl nu
    endif
endfunction

" Gui Tab Lable
function! GuiTabLabel()
    let bufnrlist = tabpagebuflist(v:lnum)
    let label = bufname(bufnrlist[tabpagewinnr(v:lnum) -1])
    let filename = fnamemodify(label, ':t')
    return filename
endfunction

function! MyTabLabel(n)
    let buflist = tabpagebuflist(a:n)
    let winnr = tabpagewinnr(a:n)
    let label = bufname(buflist[winnr - 1])
    let filename = fnamemodify(label, ':t')
    return filename
endfunction

function! MyTabLine()
    let s = ''
    for i in range(tabpagenr('$'))
        " select the highlighting
        if i + 1 == tabpagenr()
            let s .= '%#TabLineSel#'
        else
            let s .= '%#TabLine#'
        endif

        " set the tab page number (for mouse clicks)
        let s .= '%' . (i + 1) . 'T'

        " the label is made by MyTabLabel()
        let s .= ' %{MyTabLabel(' . (i + 1) . ')} '
    endfor

    " after the last tab fill with TabLineFill and reset tab page nr
    let s .= '%#TabLineFill#%T'

    " right-align the label to close the current tab page
    if tabpagenr('$') > 1
        let s .= '%=%#TabLine#%999Xclose'
    endif

    return s
endfunction

function! MyFoldText()
    let line = getline(v:foldstart)

    let nucolwidth = &fdc + &number * &numberwidth
    let windowwidth = winwidth(0) - nucolwidth - 3
    let foldedlinecount = v:foldend - v:foldstart

    " expand tabs into spaces
    let onetab = strpart('          ', 0, &tabstop)
    let line = substitute(line, '\t', onetab, 'g')

    let line = strpart(line, 0, windowwidth - 2 -len(foldedlinecount))
    let fillcharcount = windowwidth - len(line) - len(foldedlinecount) - 4
    return line . '⋯'. repeat(" ",fillcharcount) . foldedlinecount . '⋯'. ' '
endfunction

function! SetCursorPosition()
    if &filetype !~ 'svn\|commit\c'
        if line("'\"") > 0 && line("'\"") <= line("$")
            exe "normal! g`\""
            normal! zz
        endif
    endif
endfunction

" Remove trailing whitespaces and ^M chars
function! RemoveSpacesM()
    echo "Remove whitespaces and ^M chars"
    normal m`:%s/\s\+$//e ``
    call setline(1,map(getline(1,"$"),'substitute(v:val,"\\s\\+$","","")'))
endfunction

"Auomatically add file head. NERO_commenter.vim needed.
function! AutoHead()
    let fl = line(".")
    if getline(fl) !~ "^$"
        let fl += 1
    endif
    let ll = fl+3
    call setline(fl, '')
    "call append(fl,"Last Change: ")
    call append(fl,"Description: ")
    call append(fl+1,"")
    call append(fl+2, GetVimStyle())
    execute fl . ','. ll.'call NERDComment(0,"toggle")'
endfunc
"nmap ,h :call AutoHead()<cr>

" Get Vim Style
function! GetVimStyle()
    let t:vim = printf("set fdm=%s ts=%d sw=%d sts=%d ft=%s fenc=%s ff=%s",
        \&foldmethod,
        \&tabstop,
        \&shiftwidth,
        \&softtabstop,
        \&filetype,
        \&fileencoding,
        \&fileformat
        \)
    return t:vim
endfunction

" }}}
" <<---------------------------------------------------------------------------
