#!/usr/bin/env bash

VERSION=3.4.9
URL="http://apache.mirror.serveriai.lt/zookeeper/zookeeper-$VERSION/zookeeper-$VERSION.tar.gz"

function install {
  rm -rf "$OPT/zookeeper-$VERSION"
  rm -rf "$TMP/zookeeper*"

  wget -P $TMP $URL
  tar -xf "$TMP/zookeeper-$VERSION.tar.gz" --directory $OPT/
  # mv $OPT/"spark"* $OPT/spark
}

$@
