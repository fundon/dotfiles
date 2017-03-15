function fish_prompt
    set_color red
    echo -n ' λ '
    set_color $fish_color_cwd
    echo -n (prompt_pwd)
    echo -n (git-radar --fish --fetch)
    set_color normal
    echo -n ' > '
end

set -U fish_user_paths $HOME/.yarn/bin $HOME/.cargo/bin $fish_user_paths

## GPG
set -g -x GPG_TTY (tty)

## Node & NPM
set -g -x NODEJS_ORG_MIRROR https://npm.taobao.org/mirrors/node
set -g -x PHANTOMJS_CDNURL https://npm.taobao.org/mirrors/phantomjs

## Alias

alias g "git"

alias cnpm "npm --registry=https://registry.npm.taobao.org --cache=$HOME/.npm/.cache/cnpm --disturl=https://npm.taobao.org/mirrors/node --userconfig=$HOME/.cnpmrc"
