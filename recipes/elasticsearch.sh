#!/usr/bin/env bash

source "recipes/apache_installer.sh"

function install {
  NAME="elasticsearch"
  VERSION="5.6.10"
  URL="https://artifacts.elastic.co/downloads/$NAME/$NAME-$VERSION.tar.gz"
  apache_installer $NAME $URL
}

function kibana {
  NAME="kibana"
  VERSION="6.2.4"
  URL="https://artifacts.elastic.co/downloads/$NAME/$NAME-$VERSION-darwin-x86_64.tar.gz"
  apache_installer $NAME $URL
}

$@
