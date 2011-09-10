if exists("did_load_filetypes")
    finish
endif
let did_load_filetypes = 1

augroup filetypedetect

    au BufNewFile,BufRead *.c setf c

    " Markdown
    au BufNewFile,BufRead *.{md,mkd,mark,markdown} setf mkd

    " SH
    au BufNewFile,BufRead *.sh setf sh

    " JavaScript, ECMAScript
    au BufNewFile,BufRead *.{js,javascript,es,jsx} setf javascript

    " Taskwarrior configuration file
    au BufNewFile,BufRead .taskrc setf taskrc

    " Taskwarrior data files
    au BufNewFile,BufRead {pending,completed,undo}.data setf taskdata

    " Taskwarrior handling of 'task 42 edit'
    au BufNewFile,BufRead *.task setf taskedit

    " Vim
    au BufNewFile,BufRead *.vim,{*}vimrc,{*}gvimrc setf vim

augroup END
