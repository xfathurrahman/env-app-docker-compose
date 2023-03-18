#!/bin/bash

set -e

MYSQL_ROOT_PASSWORD="${MYSQL_ROOT_PASSWORD:-root}"
MYSQL_DATABASE="${MYSQL_DATABASE:-db_npm}"
MYSQL_USER="${MYSQL_USER:-user_npm}"
MYSQL_PASSWORD="${MYSQL_PASSWORD:-pass_npm}"

echo "CREATE DATABASE IF NOT EXISTS \`${MYSQL_DATABASE}\`;" > /docker-entrypoint-initdb.d/init.sql
echo "CREATE USER '${MYSQL_USER}'@'%' IDENTIFIED BY '${MYSQL_PASSWORD}';" >> /docker-entrypoint-initdb.d/init.sql
echo "GRANT ALL PRIVILEGES ON \`${MYSQL_DATABASE}\`.* TO '${MYSQL_USER}'@'%';" >> /docker-entrypoint-initdb.d/init.sql
echo "FLUSH PRIVILEGES;" >> /docker-entrypoint-initdb.d/init.sql