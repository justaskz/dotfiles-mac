#!/usr/bin/env bash

function install {
  # brew install tmux
  brew install reattach-to-user-namespace
  brew install automake
  install_old_version
}

function install_old_version {
  TMUX_PATH="$HOME/tmux"
  rm -rf $TMUX_PATH

  git clone git@github.com:tmux/tmux.git "$TMUX_PATH"
  cd "$TMUX_PATH"
  git checkout 1.9a
  ./autogen.sh
  ./configure && make
}

$@
