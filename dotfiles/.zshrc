#!/usr/bin/env bash

# Prevent duplicates in command history
setopt EXTENDED_HISTORY
setopt HIST_EXPIRE_DUPS_FIRST
setopt HIST_IGNORE_DUPS
setopt HIST_IGNORE_ALL_DUPS
setopt HIST_IGNORE_SPACE
setopt HIST_FIND_NO_DUPS
setopt HIST_SAVE_NO_DUPS
setopt HIST_BEEP


ulimit -n 1024

# makes VIM work with ctrl
stty -ixon -ixoff

# Uncomment the following line to use case-sensitive completion.
CASE_SENSITIVE="true"

# ???
KEYTIMEOUT=.1
#################################################
## ZSH CONFIG
#################################################

# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Would you like to use another custom folder than $ZSH/custom?
export ZSH_CUSTOM="$HOME/.oh-my-zsh-custom"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
plugins=(zsh-syntax-highlighting)

# User configuration
source $ZSH/oh-my-zsh.sh
source $HOME/.env
source $HOME/.aliases

# environmebt mount
if hash rbenv 2>/dev/null; then
  eval "$(rbenv init -)"
fi

if hash pyenv 2>/dev/null; then
  eval "$(pyenv init -)"
fi

if hash starship 2>/dev/null; then
  eval "$(starship init zsh)"
fi

# FZF
source "$HOME/opt/fzf/shell/completion.zsh"
source "$HOME/opt/fzf/shell/key-bindings.zsh"

# CTRL+P show files and directories in current folder only
__fsel_mod() {
  local cmd="${FZF_CTRL_P_COMMAND:-"command find -L . -maxdepth 1 \\( -path '*/\\.*' -o -fstype 'sysfs' -o -fstype 'devfs' -o -fstype 'devtmpfs' -o -fstype 'proc' \\) -prune \
    -o -type f -print \
    -o -type d -print \
    -o -type l -print 2> /dev/null | cut -b3-"}"
  setopt localoptions pipefail no_aliases 2> /dev/null
  eval "$cmd" | FZF_DEFAULT_OPTS="--height ${FZF_TMUX_HEIGHT:-40%} --reverse $FZF_DEFAULT_OPTS $FZF_CTRL_T_OPTS" $(__fzfcmd) -m "$@" | while read item; do
    echo -n "${(q)item} "
  done
  local ret=$?
  echo
  return $ret
}

fzf-file-widget_mod() {
  LBUFFER="${LBUFFER}$(__fsel_mod)"
  local ret=$?
  zle reset-prompt
  return $ret
}

zle     -N   fzf-file-widget_mod
bindkey '^P' fzf-file-widget_mod
