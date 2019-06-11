#!/usr/bin/env bash

function install {
  # brew install elasticsearch
  # brew install git
  # brew install mysql@5.7
  # brew install qt
  # brew install rbenv
  # brew install ruby-build
  brew install Caskroom/cask/java
  brew install cmake
  brew install geoip
  brew install geoipupdate
  brew install glib
  brew install libxmlsec1
  brew install memcached
  brew install node@8
  brew install openssl
  brew install percona-toolkit
  brew install redis
  brew install v8
  brew install vips --with-webp
  brew install webp
  brew install yarn
}

$@
