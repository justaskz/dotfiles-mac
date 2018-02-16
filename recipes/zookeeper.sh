#!/usr/bin/env bash

source "recipes/apache_installer.sh"

NAME="zookeeper"
URL="http://apache.mirror.serveriai.lt/zookeeper/current/zookeeper-3.4.10.tar.gz"

apache_installer $NAME $URL
