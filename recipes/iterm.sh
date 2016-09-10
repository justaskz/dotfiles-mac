#!/usr/bin/env bash

function install {
  brew cask install iterm2

  cp "./presets/com.googlecode.iterm2.plist" "$HOME/Library/Preferences"
}

$@
