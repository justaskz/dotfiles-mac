function install {
  brew install pyenv
  pyenv install miniconda

  conda install jupyter
}

$@
