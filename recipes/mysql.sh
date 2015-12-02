#!/usr/bin/env bash

function install {
  brew install mysql
  update_mysql_configuration
}

function update_mysql_configuration() {
  MYSQL_DIR="/etc/mysql"
  MYSQL_CONFIG_FILE="${MYSQL_DIR}/my.cnf"

  if [ -e "$MYSQL_CONFIG_FILE" ]; then
    echo "MySQL already configured"
    return
  fi

  mysql.server start

  if ! mysqladmin -u root password a; then
    fail "Could not change MySQL password"
    return
  fi

  sudo mkdir -p "$MYSQL_DIR"

  echo "[client]
user=root
password=a

[mysqld]
socket = /tmp/mysql.sock
max_sp_recursion_depth = 255

max_connections       = 1000
key_buffer_size       = 16K
max_allowed_packet    = 1M
table_open_cache      = 4
sort_buffer_size      = 64K
read_buffer_size      = 256K
read_rnd_buffer_size  = 256K
net_buffer_length     = 2K
thread_stack          = 128K" | sudo tee "$MYSQL_CONFIG_FILE" > /dev/null

  mysql.server restart
}

$@
