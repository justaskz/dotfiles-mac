#!/usr/bin/env bash

function install {
  # DONWLOAD AND INSTALL SUBLIME MANUALLY

  brew install wget

  config
  # install_ctags
}

function config {
  SUBLIME_HOME="$HOME/Library/Application Support/Sublime Text 3"
  mkdir -p "$SUBLIME_HOME"

  BACKUP_FOLDER_SUBLIME="$HOME/repos/dotfiles-mac/sublime_3"

  # install Package Control
  PACKAGE_CONTROL_PATH="$SUBLIME_HOME/Installed Packages"
  mkdir -p "$PACKAGE_CONTROL_PATH"
  wget -P "$PACKAGE_CONTROL_PATH" "http://sublime.wbond.net/Package%20Control.sublime-package"

  # move settings files
  rsync -r "$BACKUP_FOLDER_SUBLIME/User/" "$SUBLIME_HOME/Packages/User/"
  rsync -r "$BACKUP_FOLDER_SUBLIME/Themes/" "$SUBLIME_HOME/Packages/Themes/"

  # make callable from command line
  rm -rf "$HOME/bin/subl"
  ln -s "/Applications/Sublime Text.app/Contents/SharedSupport/bin/subl" "$HOME/bin/subl"

  # defaults write com.apple.LaunchServices/com.apple.launchservices.secure LSHandlers -array-add '{LSHandlerContentType=public.plain-text;LSHandlerRoleAll=com.sublimetext.3;}'
}

function install_ctags {
  # brew install ctags

  # do it manually after installing latest ruby
  # gem install ripper-tags
}

$@
