#!/usr/bin/env bash

function install {
  brew cask install iterm2

  cp "./presets/com.googlecode.iterm2.plist" "$HOME/Library/Preferences"

  # Fonts
  git clone https://github.com/powerline/fonts.git --depth=1 $TMP/fonts
  bash $TMP/fonts/install.sh
  rm -rf $TMP/fonts
}

$@
