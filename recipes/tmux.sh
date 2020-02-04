#!/usr/bin/env bash

function install {
  brew install tmux
  brew install reattach-to-user-namespace
  # brew install automake
  # install_old_version
}

function install_old_version {
  TMUX_PATH="$HOME/opt/tmux"
  rm -rf $TMUX_PATH

  brew install automake
  git clone https://github.com/tmux/tmux.git "$TMUX_PATH"
  cd "$TMUX_PATH"
  git checkout 2.8

  sudo apt-get -y install pkg-config libevent-dev libncurses5-dev libncursesw5-dev

  sh autogen.sh
  sh configure && make
  mkdir -p bin
  cp tmux bin
}

function cpu_monitor {
  git clone git@github.com:thewtex/tmux-mem-cpu-load.git $HOME/repos
  cd $HOME/repos/tmux-mem-cpu-load
  cmake .
  make
  make install
}

$@
