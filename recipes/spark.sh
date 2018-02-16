#!/usr/bin/env bash

source "recipes/apache_installer.sh"

NAME="spark"
URL="http://apache.mirror.vu.lt/apache/spark/spark-2.2.0/spark-2.2.0-bin-hadoop2.7.tgz"

apache_installer $NAME $URL
