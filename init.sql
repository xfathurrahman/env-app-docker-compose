#!/bin/bash

set -e

MYSQL_ROOT_PASSWORD="${MYSQL_ROOT_PASSWORD:-root}"
MYSQL_DATABASE="${NPM_DB_NAME:-db_npm}"
MYSQL_USER="${NPM_DB_USER:-user_npm}"
MYSQL_PASSWORD="${NPM_DB_PASSWORD:-pass_npm}"

echo "CREATE DATABASE IF NOT EXISTS \`${MYSQL_DATABASE}\`;" > /docker-entrypoint-initdb.d/init.sql
echo "CREATE USER '${MYSQL_USER}'@'%' IDENTIFIED WITH mysql_native_password BY '${MYSQL_PASSWORD}';" >> /docker-entrypoint-initdb.d/init.sql
echo "GRANT ALL PRIVILEGES ON \`${MYSQL_DATABASE}\`.* TO '${MYSQL_USER}'@'%';" >> /docker-entrypoint-initdb.d/init.sql
echo "FLUSH PRIVILEGES;" >> /docker-entrypoint-initdb.d/init.sql