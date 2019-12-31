#!/usr/bin/env bash

function install {
  brew install starship

  # LINUX
  # curl -fsSL https://starship.rs/install.sh | xargs bash --bin-dir ~/opt
  wget https://raw.githubusercontent.com/starship/starship/master/install/install.sh
  bash install.sh --bin-dir ~/bin
  rm install.sh
}

@$
