#!/bin/sh
local ret_status="%(?:%{$fg_bold[green]%}➜ :%{$fg_bold[red]%}➜ )"
PROMPT='${ret_status}%{$fg[cyan]%}%c%{$reset_color%} $(git_prompt_info)%{$fg_bold[yellow]$(prompt_indicators)%}%{$reset_color%}'

BRANCH_ICON="\ue0a0"
ROOT_ICON="\u26A1"
GEAR_ICON="\u2699"

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg_bold[blue]%}("
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$fg_bold[blue]%})"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[red]%}"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[green]%}"

function git_prompt_info() {
  ref=$(git symbolic-ref HEAD 2> /dev/null) || return
  echo "$ZSH_THEME_GIT_PROMPT_PREFIX$(parse_git_dirty)$BRANCH_ICON $(current_branch)$ZSH_THEME_GIT_PROMPT_SUFFIX "
}

function prompt_indicators() {
  if [[ "$UID" -eq 0 ]]; then
    echo "$ROOT_ICON "
  fi
  if [[ $(jobs -l | wc -l) -gt 0 ]]; then
    echo "$GEAR_ICON "
  fi
}
