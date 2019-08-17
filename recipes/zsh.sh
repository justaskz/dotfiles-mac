#!/usr/bin/env bash

function install {
  brew install zsh

  # sudo -s 'echo /usr/local/bin/zsh >> /etc/shells' && chsh -s /usr/local/bin/zsh

  # install oh-my-zsh
  sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

  rm -f $HOME/.zshrc
  rm -f $HOME/.zshrc.pre-oh-my-zsh
  cp ./dotfiles/.zshrc $HOME
  ZSH_CUSTOM="$HOME/.oh-my-zsh-custom"
  mkdir -p $ZSH_CUSTOM

  # install spaceship theme
  git clone https://github.com/denysdovhan/spaceship-prompt.git "$ZSH_CUSTOM/themes/spaceship-prompt"
  ln -s "$ZSH_CUSTOM/themes/spaceship-prompt/spaceship.zsh-theme" "$ZSH_CUSTOM/themes/spaceship.zsh-theme"

  # install syntax-highlighting plugin
  git clone https://github.com/zsh-users/zsh-syntax-highlighting.git $ZSH_CUSTOM/plugins/zsh-syntax-highlighting

  source $HOME/.zshrc
}

$@
