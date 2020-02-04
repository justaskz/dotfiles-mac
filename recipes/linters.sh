#!/usr/bin/env bash

function install {
  brew install shellcheck
  npm -g install eslint
  pip install ansible-lint
  gem install rubocop
}

$@
