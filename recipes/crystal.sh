#!/usr/bin/env bash

function install {
  brew install crystal-lang
}

function guardian {
  git clone https://github.com/f/guardian.git && cd guardian
  crystal build src/guardian.cr --release
}

$@
