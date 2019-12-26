#!/usr/bin/env bash

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
# export FZF_DEFAULT_COMMAND='fd --type f'
# export FZF_COMPLETION_TRIGGER=''
# export FZF_DEFAULT_OPTS='--bind tab:down --cycle'
# bindkey '^T' fzf-completion
# bindkey '^I' $fzf_default_completion
