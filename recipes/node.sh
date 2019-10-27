#!/usr/bin/env bash

function install {
  brew install node

  # NPM packages
  npm -g update
  npm -g install mocha
  npm -g install http-server
  npm -g install supervisor
}

$@
