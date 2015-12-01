#!/usr/bin/env bash

function install {
  mkdir -p "$HOME/.vim"
  git clone https://github.com/gmarik/Vundle.vim.git $HOME/.vim/bundle/Vundle.vim
  vim +PluginInstall +qall
}

$@
