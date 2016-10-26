#!/usr/bin/env bash

VERSION=0.10.0.1
URL="http://apache.mirror.vu.lt/apache/kafka/$VERSION/kafka_2.11-$VERSION.tgz"

function install {
  rm -rf "$OPT/kafka-$VERSION"
  rm -rf "$TMP/kafka*"

  wget -P $TMP $URL
  tar -xf "$TMP/kafka_2.11-$VERSION.tgz" --directory $OPT/
  # mv $OPT/"spark"* $OPT/spark
}

$@
