#!/usr/bin/env bash

VERSION=2.11.8
URL="http://downloads.lightbend.com/scala/$VERSION/scala-$VERSION.tgz"

function install {
  rm -rf "$OPT/scala-$VERSION"
  rm -rf $TMP/scala*

  wget -P $TMP $URL
  tar -xf "$TMP/scala-$VERSION.tgz" --directory $OPT/
}

$@
