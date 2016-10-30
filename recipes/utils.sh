#!/usr/bin/env bash

function install {
  system
  # web
  # data_science
}

function system {
  brew install findutils --with-default-names
  brew install gnu-sed --with-default-names
  brew install gnu-tar --with-default-names
  brew install gnu-which --with-default-names
  brew install gnutls --with-default-names
  brew install homebrew/dupes/grep --with-default-names
  brew install coreutils
  # brew install binutils
  # brew install diffutils
  brew install gzip
  # brew install watch
  brew install wget
  # brew install nmap
  # brew install gpg
  brew install htop
  brew install tree

  brew install rmtrash
}

function web {
  npm install -g babel
  npm install -g babel-core
  npm install -g bower
  npm install -g casperjs
  npm install -g coffee-script
  npm install -g eslint
  npm install -g jade
  npm install -g jasmine
  npm install -g jasmine-node
  npm install -g jshint
  npm install -g json-server
  npm install -g mocha
  npm install -g phantomjs
  npm install -g watchman
  npm install -g webpack
  npm install -g webpack-dev-server

  gem install scss_lint
}

function data_science {
  pip install csvkit
}

$@
