#!/usr/bin/env bash

function install {
  brew install ctags
  gem install ripper-tags
}

$@
