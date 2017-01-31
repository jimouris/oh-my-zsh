#!/bin/sh
PROMPT='$(prompt_context)%{$fg[cyan]%}%c%{$reset_color%} $(git_prompt_info)%{$fg_bold[yellow]$(prompt_indicators)%}%{$reset_color%}'

BRANCH_ICON="\ue0a0"
ROOT_ICON="\u26A1"
GEAR_ICON="\u2699"

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg_bold[blue]%}("
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$fg_bold[blue]%})"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[red]%}"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[green]%}"

function git_prompt_info() {
    if $(git rev-parse --is-inside-work-tree >/dev/null 2>&1); then 
        echo "$ZSH_THEME_GIT_PROMPT_PREFIX$(parse_git_dirty)$BRANCH_ICON $(current_branch)$ZSH_THEME_GIT_PROMPT_SUFFIX "
    fi
}

function prompt_indicators() {
    if [[ "$UID" -eq 0 ]]; then
        echo "$ROOT_ICON "
    fi
    if [[ $(jobs -l | wc -l) -gt 0 ]]; then
        echo "$GEAR_ICON "
    fi
}

# display machine name if in ssh
function prompt_context() {
    if [[ -n "$SSH_CLIENT" ]]; then
        echo "%(?:%{$fg_bold[green]%}{%m}➜ :%{$fg_bold[red]%}{%m}➜ )"
    else
        echo "%(?:%{$fg_bold[green]%}➜ :%{$fg_bold[red]%}➜ )"
    fi
}

export SROMPT='${ret_status}%{$fg[cyan]%}%c%{$reset_color%} %{$fg_bold[yellow]$(prompt_indicators)%}%{$reset_color%}'

