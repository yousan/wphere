#!/usr/bin/env bash

# run curl -sSL -o - https://raw.githubusercontent.com/yousan/wphere/develop/bin/online-install.sh | \
# bash -s 1 2 3 4 5

set -xe

if [ $# -lt 3 ]; then
	echo "usage: $0 <db-name> <db-user> <db-pass> [db-host] [wp-version] [installdir]"
	exit 1
fi

DB_NAME=$1
DB_USER=$2
DB_PASS=$3
DB_HOST=${4-localhost}
WP_VERSION=${5-latest}
INSTALL_DIR=${6-./}

if ! [ -x wp ]; then
  curl -sSl -o wp https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
  chmod +x wp
fi

echo 'ok'