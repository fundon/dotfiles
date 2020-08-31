## dotfiles

### Tools

```shell
$ brew install fish
$ echo "/usr/local/bin/fish" | sudo tee -a /etc/shells
$ chsh -s /usr/local/bin/fish
```

```
# ~/.config/fish/config.fish

starship init fish | source
```

* fish
* gpg
* starship
* jq
* htop
* exa
* bat
* fd
* hyperfine
* hexyl
* ripgrep
* fzf
* sk # skim
* dust
* lsd
* tmux
* diff-so-fancy
* git-delta
* diffr
* node
* yarn
* bandwhich
* procs
* neofetch
* yabai
* skhd
* zenith # `brew tap bvaisvil/zenith`
* upx

### APPs

* dropbox
* firefox
* sketch
* netnewswire
* google-chrome
* hiddenbar
* iina
* iterm2
* background-music
* openinterminal-lite
* visual-studio-code

	* vim

		```
		$ defaults write com.microsoft.VSCode ApplePressAndHoldEnabled -bool false         # For VS Code
		$ defaults write com.microsoft.VSCodeInsiders ApplePressAndHoldEnabled -bool false # For VS Code Insider
		$ defaults delete -g ApplePressAndHoldEnabled                                      # If necessary, reset global default
		```

	* prettier

	* vetur

* telegram
* robo-3t
* wechatwebdevtools

### Fonts

```shell
$ brew tap homebrew/cask-fonts
$ brew cask install font-fira-code
```

* font-fira-code


### Rust

https://www.rust-lang.org/learn/get-started

```shell
$ curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
```

```shell
$ cargo install zoxide
$ cargo install dua-cli
```

### Go

```shell
$ 
```

* https://fishshell.com/
* https://editorconfig.org/
* https://github.com/jwilm/alacritty
* https://github.com/tmux/tmux
