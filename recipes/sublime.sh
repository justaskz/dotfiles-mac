#!/usr/bin/env bash

function install {
  SUBLIME_PATH="$HOME/Library/Application Support/Sublime Text 3"
  mkdir -p "$SUBLIME_PATH"

  BACKUP_PATH="$HOME/repos/dotfiles-mac/sublime_3"

  # install Package Control
  PACKAGE_CONTROL_PATH="$SUBLIME_PATH/Installed Packages"
  mkdir -p "$PACKAGE_CONTROL_PATH"
  wget -P "$PACKAGE_CONTROL_PATH" "http://sublime.wbond.net/Package%20Control.sublime-package"

  # move settings files
  rsync -r "$BACKUP_PATH/User/" "$SUBLIME_PATH/Packages/User/"
  rsync -r "$BACKUP_PATH/Themes/" "$SUBLIME_PATH/Packages/Themes/"

  # make callable from command line
  rm -rf "$HOME/bin/subl"
  ln -s "/Applications/Sublime Text.app/Contents/SharedSupport/bin/subl" "$HOME/bin/subl"
}

$@
