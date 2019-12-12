# https://www.tecmint.com/things-to-do-after-installing-freebsd/

## Remove The Gretting
set fish_greeting

## PATH
# set -U fish_user_paths /usr/local/bin /usr/sbin /usr/bin /sbin /bin
# Fixed: $PATH duplicate entries inside a tmux session,
# https://github.com/fish-shell/fish-shell/issues/5117
if not set -q TMUX
  set -gx PATH \
    $HOME/bin \
    $HOME/go/bin \
    $HOME/.cargo/bin \
    $HOME/.deno/bin \
    $HOME/.yarn/bin \
    $HOME/.config/npm/bin \
    $HOME/.wasmer/bin \
    $HOME/Dev/flutter/bin \
    $HOME/Dev/vlang/v/compiler \
    $HOME/Dev/flutter/.pub-cache/bin \
    $HOME/Dev/flutter/bin/cache/dart-sdk/bin \
    /Applications/Alacritty.app/Contents/MacOS \
    /usr/local/sbin \
    $PATH
end

## Colors
### ls
# https://github.com/seebi/dircolors-solarized/issues/10
set -gx LSCOLORS exfxfeaeBxxehehbadacea
### man
set -gx LESS_TERMCAP_mb \e'[01;31m'       # begin blinking
set -gx LESS_TERMCAP_md \e'[01;34m'       # begin bold
set -gx LESS_TERMCAP_me \e'[0m'           # end mode
set -gx LESS_TERMCAP_so \e'[01;44;33m'    # begin standout-mode - info box
set -gx LESS_TERMCAP_se \e'[0m'           # end standout-mode
set -gx LESS_TERMCAP_us \e'[01;32m'       # begin underline
set -gx LESS_TERMCAP_ue \e'[0m'           # end underline
### exa
#### https://github.com/github/linguist/blob/master/lib/linguist/languages.yml
set -gx EXA_COLORS \
":*.c=38;2;"(hex_to_rgb "555555")\
":*.cpp=38;2;"(hex_to_rgb "f34b7d")\
":*.cr=38;2;"(hex_to_rgb "000100")\
":*.rs=38;2;"(hex_to_rgb "dea584c")\
":*.go=38;2;"(hex_to_rgb "00ADD8")\
":*.js=38;2;"(hex_to_rgb "f1e05a")\
":*.ts=38;2;"(hex_to_rgb "2b7489")\
":*.css=38;2;"(hex_to_rgb "563d7c")\
":*.html=38;2;"(hex_to_rgb "e34c26")\
":*.dart=38;2;"(hex_to_rgb "00B4AB")\
":*.lisp=38;2;"(hex_to_rgb "3fb68b")\
":*.coffee=38;2;"(hex_to_rgb "244776")\
":*.dockerfile=38;2;"(hex_to_rgb "384d54")\
":*.ex=38;2;"(hex_to_rgb "6e4a7e")\
":*.elm=38;2;"(hex_to_rgb "60B5CC")\
":*.kt=38;2;"(hex_to_rgb "F18E33")\
":*.ll=38;2;"(hex_to_rgb "185619")\
":*.lua=38;2;"(hex_to_rgb "000080")\
":*.php=38;2;"(hex_to_rgb "4F5D95")\
":*.sql=38;2;"(hex_to_rgb "dad8d8")\
":*.pl=38;2;"(hex_to_rgb "0298c3")\
":*.py=38;2;"(hex_to_rgb "3572A5")\
":*.r=38;2;"(hex_to_rgb "198CE7")\
":*.rb=38;2;"(hex_to_rgb "701516")\
":*.scala=38;2;"(hex_to_rgb "c22d40")\
":*.swift=38;2;"(hex_to_rgb "ffac45")\
":*.vim=38;2;"(hex_to_rgb "199f4b")\
":*.vue=48;2;"(hex_to_rgb "2c3e50")\
":*.wast=38;2;"(hex_to_rgb "04133b")\
":*.wat=38;2;"(hex_to_rgb "04133b")\
":*.zig=38;2;"(hex_to_rgb "ec915c")\
":*.sed=38;2;"(hex_to_rgb "64b970")

## Aliases
source ~/.config/fish/aliases.fish

# https://github.com/fish-shell/fish-shell/issues/1915
for i in (functions); functions $i > /dev/null; end

if not set -q SSH_AUTH_SOCK
  ssh-agent fish
  ssh-add
end

# TZ
# Hong_Kong
# Shanghai
set -gx TZ Asia/Hong_Kong

## GPG
set -gx GPG_TTY (tty)

## Editor
set -gx EDITOR vim

## Rust
# https://github.com/mozilla/sccache/issues/488
# https://github.com/rust-lang-nursery/mdBook/pull/996/files
set -gx RUSTC_WRAPPER sccache

## GO
set -gx GOPATH $HOME/go

## Wasmer
set -gx WASMER_DIR $HOME/.wasmer
set -gx WASMER_CACHE_DIR $WASMER_DIR/cache

## Flutter
set -gx PUB_HOSTED_URL https://pub.flutter-io.cn
set -gx FLUTTER_STORAGE_BASE_URL https://storage.flutter-io.cn

## Set the emoji width for iTerm
set -g fish_emoji_width 2

## fzf
set -g FZF_LEGACY_KEYBINDINGS 1

## Fish syntax highlighting
set -g fish_color_autosuggestion '555'  'brblack'
set -g fish_color_cancel -r
set -g fish_color_command --bold
set -g fish_color_comment red
set -g fish_color_cwd green
set -g fish_color_cwd_root red
set -g fish_color_end brmagenta
set -g fish_color_error brred
set -g fish_color_escape 'bryellow'  '--bold'
set -g fish_color_history_current --bold
set -g fish_color_host normal
set -g fish_color_match --background=brblue
set -g fish_color_normal normal
set -g fish_color_operator bryellow
set -g fish_color_param cyan
set -g fish_color_quote yellow
set -g fish_color_redirection brblue
set -g fish_color_search_match 'bryellow'  '--background=brblack'
set -g fish_color_selection 'white'  '--bold'  '--background=brblack'
set -g fish_color_user brgreen
set -g fish_color_valid_path --underline

## Install Starship
eval (starship init fish)
