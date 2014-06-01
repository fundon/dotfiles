
typeset -Ag GIT_SYMBOLS
GIT_SYMBOLS[ahead]='↑'
GIT_SYMBOLS[behind]='↓'
GIT_SYMBOLS[diverged]='⬍'
GIT_SYMBOLS[staged]='♦'
GIT_SYMBOLS[changed]='‣'
GIT_SYMBOLS[untracked]='✭'
GIT_SYMBOLS[clean]='✔'
GIT_SYMBOLS[clean_smiley]='☺'
GIT_SYMBOLS[dirty]='±'
GIT_SYMBOLS[dirty_smiley]='☹'
GIT_SYMBOLS[unmerged]='≠'
GIT_SYMBOLS[sha1]=':'
GIT_SYMBOLS[added]='✚'
GIT_SYMBOLS[modified]='✹'
GIT_SYMBOLS[deleted]='✖'
GIT_SYMBOLS[renamed]='➜'

ZSH_THEME_GIT_PROMPT_PREFIX="["
ZSH_THEME_GIT_PROMPT_SUFFIX="]"
ZSH_THEME_GIT_PROMPT_CLEAN="$GIT_SYMBOLS[clean]"
ZSH_THEME_GIT_PROMPT_DIRTY="$GIT_SYMBOLS[dirty]"
ZSH_THEME_GIT_PROMPT_ADDED="%{$fg[green]%}$GIT_SYMBOLS[added]%{$fg[black]%}"
ZSH_THEME_GIT_PROMPT_MODIFIED="%{$fg[blue]%}$GIT_SYMBOLS[modified]%{$fg[black]%}"
ZSH_THEME_GIT_PROMPT_DELETED="%{$fg[red]%}$GIT_SYMBOLS[deleted]%{$fg[black]%}"
ZSH_THEME_GIT_PROMPT_RENAMED="$GIT_SYMBOLS[renamed]"
ZSH_THEME_GIT_PROMPT_UNMERGED="$GIT_SYMBOLS[unmerged]"
ZSH_THEME_GIT_PROMPT_UNTRACKED="%{$fg[yellow]%}$GIT_SYMBOLS[untracked]%{$fg[black]%}"
ZSH_THEME_GIT_PROMPT_AHEAD="$GIT_SYMBOLS[ahead]"
ZSH_THEME_GIT_PROMPT_BEHIND="$GIT_SYMBOLS[behind]"
ZSH_THEME_GIT_PROMPT_DIVERGED="$GIT_SYMBOLS[diverged]"

git_branch_info() {
  echo "${$(git symbolic-ref HEAD 2> /dev/null)#(refs/heads/)}"
}

git_prompt_info() {
  index="$(git status --porcelain -b 2> /dev/null)"
  STATUS=""
  ahead=$(echo $index | egrep -o '\[ahead [0-9]+\]$' | sed 's/^.*\[ahead //;s/\]$//')
  behind=$(echo $index | egrep -o '\[behind [0-9]+\]$' | sed 's/^.*\[behind //;s/\]$//')
  untracked=${$(echo $index | egrep -o '^\?\? ' | wc -l)//[[:space:]]/}
  changed=${$(echo $index | egrep -o '^ M ' | wc -l)//[[:space:]]/}
  added=${$(echo $index | egrep -o '^A ' | wc -l)//[[:space:]]/}
  renamed=${$(echo $index | egrep -o '^R ' | wc -l)//[[:space:]]/}
  deleted=${$(echo $index | egrep -o '^.D ' | wc -l)//[[:space:]]/}

  if [ "$ahead" -gt 0 ]; then
    STATUS+="$GIT_SYMBOLS[ahead] $ahead"
  fi

  if [ "$behind" -gt 0 ]; then
    STATUS+="$GIT_SYMBOLS[behind] $behind"
  fi

  if [ "$untracked" -gt 0 ]; then
    STATUS+="$GIT_SYMBOLS[untracked] $untracked"
  fi

  if [ "$changed" -gt 0 ]; then
    STATUS+="$GIT_SYMBOLS[changed] $changed"
  fi

  if [ "$added" -gt 0 ]; then
    STATUS+="$GIT_SYMBOLS[added] $added"
  fi

  if [ "$renamed" -gt 0 ]; then
    STATUS+="$GIT_SYMBOLS[renamed] $renamed"
  fi

  if [ "$deleted" -gt 0 ]; then
    STATUS+="$GIT_SYMBOLS[deleted] $deleted"
  fi

  if [ "$STATUS" ]; then
    STATUS="$GIT_SYMBOLS[dirty]$STATUS"
  elif [ "$index" ]; then
    STATUS="$GIT_SYMBOLS[clean]"
  fi

  echo $STATUS
}

update_current_git_vars() {
  unset GIT_BRANCH
  unset GIT_REMOTE
  unset GIT_STATUS

  GIT_BRANCH="$(git_branch_info)"
  if [ -n "$GIT_BRANCH" ]; then
    GIT_BRANCH="%{$fg[cyan]%}$GIT_BRANCH%{$reset_color%}"
  fi

  GIT_STATUS+="$GIT_BRANCH"
  GIT_STATUS+="$(git_prompt_info)"

  if [ -n "$GIT_STATUS" ]; then
    GIT_STATUS="$ZSH_THEME_GIT_PROMPT_PREFIX$GIT_STATUS$ZSH_THEME_GIT_PROMPT_SUFFIX"
  fi
  echo $GIT_STATUS
}
