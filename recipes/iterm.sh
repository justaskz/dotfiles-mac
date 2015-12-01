#!/usr/bin/env bash

function install {
  cp "../presets/com.googlecode.iterm2.plist" "$HOME/Library/Preferences"
}

$@
