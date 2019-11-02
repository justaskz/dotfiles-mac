#!/usr/bin/env bash

# URL="https://someonewhocares.org/hosts/hosts"
URL="https://raw.githubusercontent.com/StevenBlack/hosts/master/alternates/fakenews-porn/hosts"

function install {
  DEFAULT_FILE="presets/hosts"
  cat $DEFAULT_FILE > $TMP/hosts
  echo "" >> $TMP/hosts
  curl $URL >> $TMP/hosts
  sudo mv $TMP/hosts /etc/hosts
}

$@
