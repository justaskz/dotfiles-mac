#!/usr/bin/env bash

function install {
  # add how to install golang

  # linters
  go get -u golang.org/x/lint/golint
  go get -u golang.org/x/tools/cmd/gotype

  # install in sublime SublimeLinter-golint
  # install in sublime SublimeLinter-gotype
}

$@
