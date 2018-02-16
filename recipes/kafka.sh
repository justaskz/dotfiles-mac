#!/usr/bin/env bash

source "recipes/apache_installer.sh"

NAME="kafka"
URL="http://apache.mirror.vu.lt/apache/kafka/0.10.2.0/kafka_2.10-0.10.2.0.tgz"

apache_installer $NAME $URL
