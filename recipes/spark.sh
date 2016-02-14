#!/usr/bin/env bash
VERSION=1.6.0
URL="http://apache.mirror.vu.lt/apache/spark/spark-$VERSION/spark-$VERSION-bin-hadoop2.6.tgz"

function install {
  rm -rf $OPT/spark*
  rm -rf $TMP/spark*

  wget -P $TMP $URL
  tar -xf $TMP/spark*.tgz --directory $OPT/
  mv $OPT/"spark"* $OPT/spark
}

$@
