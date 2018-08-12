#!/usr/bin/env bash

function install {
  # brew install Caskroom/cask/java
  # brew install cmake
  # brew install geoip
  # brew install geoipupdate
  # brew install glib
  # brew install libxmlsec1
  # brew install memcached
  # brew install node@8
  # brew install openssl
  # brew install percona-toolkit
  # brew install qt
  # brew install redis
  # brew install v8vips
  # brew install vips
  # brew install webp
  # brew install yarn

  brew install Caskroom/cask/java8
  brew install openssl
  # brew install git
  brew install glib
  # brew install qt
  brew install v8
  brew install libxmlsec1
  brew install cmake
  brew install mysql@5.7
  brew install percona-toolkit
  brew install memcached
  brew install redis
  # brew install elasticsearch
  # brew install rbenv
  # brew install ruby-build
  brew install node@8
  brew install webp
  brew install yarn
  brew install geoip
  brew install geoipupdate
}

function ruby_2.3.1_deps {
  gem install libv8 -v '3.16.14.13' -- --with-system-v8
  brew install 'v8-315'
  gem install therubyracer -v '0.12.2' -- --with-v8-dir=/usr/local/opt/v8-315
}

$@
