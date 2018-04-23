#!/usr/bin/env bash

source "recipes/apache_installer.sh"

function install {
  NAME="grafana"
  VERSION=5.2.1
  URL="https://s3-us-west-2.amazonaws.com/grafana-releases/release/grafana-$VERSION.darwin-amd64.tar.gz"

  apache_installer $NAME $URL
}

$@
