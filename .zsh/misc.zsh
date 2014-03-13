
# misc

# vi mode
bindkey -v
bindkey jj vi-cmd-mode

# change the cursor shape according to the current vi mode (only iterm2)
# http://superuser.com/questions/151803/how-do-i-customize-zshs-vim-mode
vim_ins_mode="\033]50;CursorShape=1\a"
vim_cmd_mode="\033]50;CursorShape=0\a"

zle-keymap-select() {
  echo -ne "${${KEYMAP/vicmd/${vim_cmd_mode}}/(main|viins)/${vim_ins_mode}}"
  zle reset-prompt
}
zle -N zle-keymap-select

zle-line-finish() {
  echo -ne $vim_ins_mode
}
zle -N zle-line-finish

# useful bindings
# more here: http://www.cs.elte.hu/zsh-manual/zsh_14.html
bindkey "^R" history-incremental-search-backward
bindkey "^P" history-search-backward
bindkey "^N" history-search-forward
bindkey "^Y" accept-and-hold
bindkey "^A" beginning-of-line
bindkey "^E" end-of-line
bindkey "^F" forward-word
bindkey "^B" backward-word
bindkey "^L" forward-char
bindkey "^H" backward-char
bindkey "^K" kill-line 
bindkey "^D" backward-kill-line 
bindkey "^U" kill-whole-line 
bindkey "^W" backward-kill-word 
bindkey "^?" backward-delete-char
bindkey "^N" insert-last-word
bindkey -s "^T" "^[Isudo ^[A" # "t" for "toughguy"
