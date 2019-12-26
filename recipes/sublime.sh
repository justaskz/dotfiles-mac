#!/usr/bin/env bash

SUBLIME_HOME="$HOME/Library/Application Support/Sublime Text 3"
BACKUP_FOLDER_SUBLIME="$HOME/repos/dotfiles-mac/sublime_3"
PACKAGE_CONTROL_PATH="$SUBLIME_HOME/Installed Packages"

function install {
  # DONWLOAD AND INSTALL SUBLIME MANUALLY

  brew install wget

  config
}

function config {
  mkdir -p "$SUBLIME_HOME"

  # install Package Control
  mkdir -p "$PACKAGE_CONTROL_PATH"
  wget -P "$PACKAGE_CONTROL_PATH" "http://sublime.wbond.net/Package%20Control.sublime-package"

  move_settings_files

  # make callable from command line
  rm -rf "$HOME/bin/subl"
  ln -s "/Applications/Sublime Text.app/Contents/SharedSupport/bin/subl" "$HOME/bin/subl"

  # defaults write com.apple.LaunchServices/com.apple.launchservices.secure LSHandlers -array-add '{LSHandlerContentType=public.plain-text;LSHandlerRoleAll=com.sublimetext.3;}'
}

function move_settings_files {
  rsync -r "$BACKUP_FOLDER_SUBLIME/User/" "$SUBLIME_HOME/Packages/User/"
  rsync -r "$BACKUP_FOLDER_SUBLIME/Themes/" "$SUBLIME_HOME/Packages/Themes/"
}

$@
