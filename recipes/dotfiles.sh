#!/usr/bin/env bash

function install {
  cp -rT dotfiles $HOME/
  mkdir -p $HOME/.config/
  mv $HOME/starship.toml $HOME/.config/

  source $HOME/.aliases
}

$@
