#!/usr/bin/env bash

function install {
  brew install git

  git config --global core.excludesfile '~/.gitignore'
}

$@
