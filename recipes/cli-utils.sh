function install {
  npm install -g bower
  npm install -g casperjs
  npm install -g coffee-script
  npm install -g jshint
  npm install -g phantomjs
  npm install -g watchman
  npm install -g webpack
  npm install -g webpack-dev-server

  gem install scss_lint
}

$@
