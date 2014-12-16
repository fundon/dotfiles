#!/usr/bin/env zsh
#git pull origin master
function doIt() {
  rsync --exclude ".git/" --exclude ".DS_Store" --exclude "bootstrap.sh" \
    --exclude "README.md" --exclude "LICENSE-MIT.txt" \
    --exclude "Brewfile" \
    -avh --no-perms . ~
  source ~/.zshrc
}
if [[ "$1" == "--force" ]] || [[ "$1" == "-f" ]]; then
  doIt
else
  echo -n  "This may overwrite existing files in your home directory. Are you sure? (y/n) "
  read REPLY
  echo
  if [[ $REPLY =~ ^[Yy]$ ]]; then
    doIt
  fi
fi
unset doIt
