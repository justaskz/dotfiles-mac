#!/usr/bin/env bash

function install_rbenv {
  git clone https://github.com/sstephenson/rbenv.git ~/.rbenv
  rbenv rehash

  brew install ruby-build
}

function install_ruby {
  rbenv install -s 2.2.2
  rbenv global 2.2.2
  gem install bundler
  rbenv rehash
}
