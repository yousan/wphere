#!/usr/bin/env bash

set -ex

TESTDIR=~/public_html/example.dev
cd -- "$(dirname "$BASH_SOURCE")"
TESTBINDIR=`pwd -P`
WPHERE=${TESTBINDIR}/../wphere

function reset_testdir() {
  if [ -d $TESTDIR ]; then
    rm -rf $TESTDIR
  fi
  mkdir -p ${TESTDIR}
}

reset_testdir
# test with .env
cp ${TESTBINDIR}/.env.test ${TESTDIR}/.env
cd ${TESTDIR}
$WPHERE

reset_testdir
## test with .htenv
cp ${TESTBINDIR}/.env.test ${TESTDIR}/.htenv
cd ${TESTDIR}
$WPHERE
