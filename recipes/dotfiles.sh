#!/usr/bin/env bash

function install {
  cp -r ./dotfiles/ $HOME

  rm -f $HOME/hosts_bak
  rm -f $HOME/REQUIRE

  source $HOME/.zshrc
}

$@
