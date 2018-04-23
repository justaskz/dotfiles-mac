#!/usr/bin/env bash

function install {
  brew install node
  # rm -rf "$HOME/opt/nodejs"
  # mkdir -p "$HOME/opt/nodejs"
  # cd "$HOME/opt/nodejs"
  # curl http://nodejs.org/dist/node-latest.tar.gz | tar xz --strip-components=1
  # ./configure --prefix=$HOME/
  # make install

  # NPM packages
  npm -g update
  npm -g install mocha
  npm -g install http-server
  npm -g install supervisor
}

$@
