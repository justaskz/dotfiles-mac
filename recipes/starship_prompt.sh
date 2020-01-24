#!/usr/bin/env bash

function install {
  # brew install starship

  # LINUX
  mkdir -p "$HOME/bin"
  wget https://raw.githubusercontent.com/starship/starship/master/install/install.sh
  bash install.sh --bin-dir ~/bin/
  rm install.sh
}

@$
