#!/usr/bin/env bash

function install {
  brew install cmake
  brew install Caskroom/cask/java
  brew install elasticsearch
  brew install geoip
  brew install imagemagick
  brew install libxmlsec1
  brew install memcached
  brew install mysql
  brew install npm
  brew install percona-toolkit
  brew install qt
  brew install rbenv
  brew install redis
  brew install ruby-build
  brew install sphinx
  brew install v8
}

$@
