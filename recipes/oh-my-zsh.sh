#!/usr/bin/env bash

function install_zsh {
  # TODO TEST MANUALLY


  # TODO: copy .zshrc from backup before this or after??
  git clone git://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh


  # wget https://github.com/powerline/powerline/raw/develop/font/PowerlineSymbols.otf
  # wget https://github.com/powerline/powerline/raw/develop/font/10-powerline-symbols.conf

  # mkdir -p ~/.fonts
  # mv PowerlineSymbols.otf ~/.fonts/
  # fc-cache -vf ~/.fonts/

  # mkdir -p ~/.config/fontconfig/conf.d/
  # mv 10-powerline-symbols.conf ~/.config/fontconfig/conf.d/

}
