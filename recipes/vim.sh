#!/usr/bin/env bash

function install {
  brew install vim

  install_vundle

  brew install fzf
}

function install_vundle {
  mkdir -p "$HOME/.vim"
  git clone https://github.com/gmarik/Vundle.vim.git $HOME/.vim/bundle/Vundle.vim
  vim +PluginInstall +qall
}

$@
