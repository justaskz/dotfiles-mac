function install {
  web
  data_science
}

function web {
  npm install -g babel
  npm install -g babel-core
  npm install -g bower
  npm install -g casperjs
  npm install -g coffee-script
  npm install -g eslint
  npm install -g jade
  npm install -g jasmine
  npm install -g jasmine-node
  npm install -g jshint
  npm install -g json-server
  npm install -g mocha
  npm install -g phantomjs
  npm install -g watchman
  npm install -g webpack
  npm install -g webpack-dev-server

  gem install scss_lint
}

function data_science {
  pip install csvkit
}

$@

