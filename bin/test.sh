#!/usr/bin/env bash

set -ex

TESTDIR=~/public_html/example.dev

mkdir -p ${TESTDIR}
cd -- "$(dirname "$BASH_SOURCE")"
WPHERE=`pwd -P`/../wphere
cp .env.test ${TESTDIR}/.env
cd ${TESTDIR}
$WPHERE
