# .zshrc

fpath=(~/.zsh/theme $fpath)

for file in $HOME/.zsh/{options,functions,exports,path,misc,prompt,aliases}.zsh; do
  [ -r "$file" ] && source "$file"
done
unset file

for fn in ~/.zsh/functions/*; do
  [ -r "$fn" ] && source "$fn"
done
unset fn

fpath=(/opt/boxen/homebrew/share/zsh-completions $fpath)
fpath=(~/.zsh/completion $fpath)

# Local Settings
[[ -f ~/.zshrc.local ]] && source ~/.zshrc.local

# Links {{{
# https://github.com/sorin-ionescu/prezto
# https://github.com/milkbikis/powerline-shell
# https://coderwall.com/p/sun7za
# https://github.com/olivierverdier/zsh-git-prompt
# https://github.com/robbyrussell/oh-my-zsh/tree/master/plugins/git-prompt
# }}}
