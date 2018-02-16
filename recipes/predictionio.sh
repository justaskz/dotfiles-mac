#!/usr/bin/env bash

source "recipes/apache_installer.sh"

NAME="predictionio"
URL="http://apache.mirror.serveriai.lt/incubator/predictionio/0.10.0-incubating/apache-predictionio-0.10.0-incubating.tar.gz"

apache_installer $NAME $URL
