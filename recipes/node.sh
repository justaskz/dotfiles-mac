#!/usr/bin/env bash

function install() {
  rm -rf "$HOME/tmp/nodejs"
  mkdir -p "$HOME/tmp/nodejs"
  cd "$HOME/tmp/nodejs"
  curl http://nodejs.org/dist/node-latest.tar.gz | tar xz --strip-components=1
  ./configure --prefix=$HOME/
  make install

  # NPM packages
  npm -g update
  npm -g install mocha
  npm -g install coffee-script
  npm -g install http-server
  npm -g install supervisor
}

$@
