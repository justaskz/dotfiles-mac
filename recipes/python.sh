#!/usr/bin/env bash

function install {
  brew install pyenv
  easy_install pip
  virtualenv

  pyenv install miniconda3-latest
  pyenv global miniconda3-latest

  conda install jupyter
}

function virtualenv {
  pip install virtualenv
  mkdir -p ~/.virtualenvs
  virtualenv ~/.virtualenvs/main
  . ~/.virtualenvs/main/bin/activate
}

$@
