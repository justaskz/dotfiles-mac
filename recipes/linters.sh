#!/usr/bin/env bash

function install {
  brew install shellcheck
  # eslint
  # ansible
  gem install rubocop
}

$@
