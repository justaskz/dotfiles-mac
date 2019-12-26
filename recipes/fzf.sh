#!/usr/bin/env bash

function install {
  git clone --depth 1 https://github.com/junegunn/fzf.git $HOME/opt/fzf
  bash $HOME/opt/fzf/install --bin

  cp $HOME/opt/fzf/bin/fzf $HOME/bin

  source "$HOME/opt/fzf/shell/completion.zsh"
  source "$HOME/opt/fzf/shell/key-bindings.zsh"
}

$@
