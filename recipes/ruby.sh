#!/usr/bin/env bash

function install {
  # install rbenv
  git clone https://github.com/sstephenson/rbenv.git ~/.rbenv
  brew install ruby-build

  # install ruby
  rbenv install -s 2.2.2
  rbenv global 2.2.2
  rbenv rehash
}

$@
