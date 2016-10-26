#!/usr/bin/env bash

function install {
  brew install pyenv
  sudo easy_install pip
  virtualenv

  # pyenv install miniconda

  # conda install jupyter
}


function virtualenv {
  sudo pip install virtualenv
  mkdir -p ~/.virtualenvs
  virtualenv ~/.virtualenvs/main
  . ~/.virtualenvs/main/bin/activate
}
$@
