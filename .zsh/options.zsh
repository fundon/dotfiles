
# options

autoload -U colors; colors
autoload colors zsh/terminfo

autoload -U promptinit; promptinit
autoload -U compinit; compinit

setopt cdablevars
setopt correct
setopt no_correctall
setopt prompt_subst
setopt hist_ignore_dups
setopt hist_ignore_space
setopt inc_append_history
setopt nolistambiguous
setopt extended_glob
setopt autocd autopushd pushdminus pushdsilent pushdtohome
setopt transient_rprompt
setopt no_beep
setopt no_listbeep
setopt no_histbeep

#zstyle ':completion:*:descriptions' format '%U%B%d%b%u'
zstyle ':completion:*:warnings' format '%BSorry, no matches for: %d%b'
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'
