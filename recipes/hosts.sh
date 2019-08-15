#!/usr/bin/env bash

function install {
  DEFAULT_FILE="presets/hosts"
  cat $DEFAULT_FILE > $TMP/hosts
  echo "" >> $TMP/hosts
  curl https://someonewhocares.org/hosts/hosts >> $TMP/hosts
  sudo mv $TMP/hosts /etc/hosts
}

$@
