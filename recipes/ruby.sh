#!/usr/bin/env bash

function install {
  VERSION=2.6.5

  # install rbenv
  git clone https://github.com/sstephenson/rbenv.git ~/.rbenv
  brew install ruby-build

  # install ruby
  rbenv install -s $VERSION
  rbenv global $VERSION
  rbenv rehash
}

$@
