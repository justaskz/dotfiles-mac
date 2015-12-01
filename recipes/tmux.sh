#!/usr/bin/env bash

function install {
  brew install tmux
  brew install reattach-to-user-namespace
}

$@
