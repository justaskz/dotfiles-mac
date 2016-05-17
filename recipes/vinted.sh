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

function ruby_2.3.1_deps {
  gem install libv8 -v '3.16.14.13' -- --with-system-v8
  brew install 'v8-315'
  gem install therubyracer -v '0.12.2' -- --with-v8-dir=/usr/local/opt/v8-315
}

$@
