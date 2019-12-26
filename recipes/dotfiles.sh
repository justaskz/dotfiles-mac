#!/usr/bin/env bash

function install {
  cp -r ./dotfiles/ $HOME
  mv $HOME/starship/toml $HOME/.configure

  rm -f $HOME/hosts_bak
  rm -f $HOME/REQUIRE

  source $HOME/.aliases
}

$@
