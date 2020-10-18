#!/usr/bin/env bash

set -ex

BASEDIR=$(dirname "$BASH_SOURCE")

pushd $BASEDIR
wasm-pack build
cat >pkg/.eslintignore <<EOL
/* tslint:disable */
/* eslint-disable */
EOL
popd