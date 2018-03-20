#!/usr/bin/env bash

source $HOME/.bash_aliases
source $HOME/.bash_env

# environmebt mount
if hash rbenv 2>/dev/null; then
  eval "$(rbenv init - zsh)"
fi

if hash pyenv 2>/dev/null; then
  eval "$(pyenv init -)"
fi

# makes VIM work with ctrl
stty -ixon -ixoff

#################################################
## ZSH CONFIG
#################################################

# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

KEYTIMEOUT=.1

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
ZSH_THEME="avit"

# Uncomment the following line to use case-sensitive completion.
CASE_SENSITIVE="true"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM="~/repos/dotfiles-mac/oh-my-zsh-custom/"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
plugins=(git gitfast)

# User configuration
source $ZSH/oh-my-zsh.sh
