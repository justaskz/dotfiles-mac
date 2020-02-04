#!/usr/bin/env bash

function install {
  git clone git@github.com:eradman/entr.git $HOME/opt/entr

  cd $HOME/opt/entr
  ./configure
  make test
  make install
  cp entr $HOME/bin
}

$@
