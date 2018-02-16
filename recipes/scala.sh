#!/usr/bin/env bash

source "recipes/apache_installer.sh"

NAME="scala"
VERSION=2.12.1
URL="http://downloads.lightbend.com/scala/$VERSION/scala-$VERSION.tgz"

apache_installer $NAME $URL
