#!/usr/bin/env bash

function install {
  cp -rT dotfiles $HOME/

  source $HOME/.aliases
}

$@
