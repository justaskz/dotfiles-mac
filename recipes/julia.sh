#!/usr/bin/env bash

function install {
  brew update
  brew tap staticfloat/julia
  brew install julia
}

$@
