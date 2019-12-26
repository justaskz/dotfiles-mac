#!/usr/bin/env bash

function install {
  brew install zsh

  # install oh-my-zsh
  sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

  rm -f $HOME/.zshrc
  rm -f $HOME/.zshrc.pre-oh-my-zsh
  cp ./dotfiles/.zshrc $HOME
  ZSH_CUSTOM="$HOME/.oh-my-zsh-custom"
  mkdir -p $ZSH_CUSTOM

  # install syntax-highlighting plugin
  git clone https://github.com/zsh-users/zsh-syntax-highlighting.git $ZSH_CUSTOM/plugins/zsh-syntax-highlighting

  source $HOME/.zshrc
}

$@
