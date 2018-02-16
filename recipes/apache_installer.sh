#!/usr/bin/env bash

function apache_installer() {
  NAME=$1
  URL=$2

  TMP_FILE="$TMP/$NAME.tgz"
  OPT_PATH="$OPT/$NAME"

  rm -rf $TMP_FILE
  rm -rf $OPT_PATH

  wget $URL -O $TMP_FILE
  mkdir -p $OPT_PATH
  tar -xf $TMP_FILE --directory $OPT_PATH --strip-components=1
}
