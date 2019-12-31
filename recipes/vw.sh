#!/usr/bin/env bash

INSTALL_PATH="$HOME/opt/vowpal_wabbit"

function install {
  install_dependencies

  git clone git@github.com:JohnLangford/vowpal_wabbit.git $INSTALL_PATH

  cd $INSTALL_PATH
  sh autogen.sh --enable-libc++
  make
  make test
}

function install_dependencies {
  brew install libtool
  brew install autoconf
  brew install automake
  brew install boost --with-python
}

$@
