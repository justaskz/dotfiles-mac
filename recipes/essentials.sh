#!/usr/bin/env bash

function install {
  mkdir -p "$HOME/bin"
  mkdir -p "$HOME/tmp"

  # brew
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

  # wget
  brew install wget

  # copy dotfiles
  rsync -r ../dotfiles/ $HOME
}

$@
