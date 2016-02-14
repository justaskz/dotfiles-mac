#!/usr/bin/env bash

function install {
  git clone git@github.com:rylnd/shpec.git $HOME/opt/shpec
}

$@
