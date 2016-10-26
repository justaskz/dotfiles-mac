#!/usr/bin/env bash

function install() {
  git clone git@github.com:justaskz/projector.git $OPT/projector
  cd $OPT/projector

  make
}

$@
