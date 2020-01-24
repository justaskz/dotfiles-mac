#!/usr/bin/env bash

FZF_HOME="$HOME/opt/fzf"

function install {
  git clone --depth 1 https://github.com/junegunn/fzf.git "$FZF_HOME"
  bash "$FZF_HOME/install" --bin

  cp "$FZF_HOME/bin/fzf" "$HOME/bin"

  # source "$HOME/opt/fzf/shell/completion.zsh"
  # source "$HOME/opt/fzf/shell/key-bindings.zsh"
}

$@
