# .zshrc

fpath=(
  ~/.zsh/theme
  $fpath
)

for file in $HOME/.zsh/{options,functions/*,exports,path,misc,prompt,aliases}.zsh; do
  [ -r "$file" ] && source "$file"
done
unset file

fpath=(/opt/boxen/homebrew/share/zsh-completions $fpath)
fpath=(~/.zsh/completion $fpath)

# Local Settings
[[ -f ~/.zshrc.local ]] && source ~/.zshrc.local

# remove duplicates in $PATH
typeset -aU path

# Links {{{
# https://github.com/sorin-ionescu/prezto
# https://github.com/milkbikis/powerline-shell
# https://coderwall.com/p/sun7za
# https://github.com/olivierverdier/zsh-git-prompt
# https://github.com/robbyrussell/oh-my-zsh/tree/master/plugins/git-prompt
# }}}
