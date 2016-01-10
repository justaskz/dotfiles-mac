function install {
  npm -g install bower
  npm -g install coffee-script
  npm -g install webpack
  npm -g install webpack-dev-server
  npm -g install watchman

  gem install scss_lint
}

$@
