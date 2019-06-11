#!/usr/bin/env bash

function install {
  sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

  rm -f $HOME/.zshrc
  rm -f $HOME/.zshrc.pre-oh-my-zsh
  cp ./dotfiles/.zshrc $HOME
  source $HOME/.zshrc

  # mkdir -p ~/.fonts
  # wget -P ~/.fonts https://github.com/powerline/powerline/raw/develop/font/PowerlineSymbols.otf

  # fc-cache -vf ~/.fonts/

  # mkdir -p ~/.config/fontconfig/conf.d/
  # wget -P ~/.config/fontconfig/conf.d/ ~/.fonts https://github.com/powerline/powerline/raw/develop/font/10-powerline-symbols.conf
}

$@
