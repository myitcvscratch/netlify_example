#!/usr/bin/env bash

set -eu

env

mkdir -p _functions
go build -o ./_functions/hello-lambda ./functions/hello
mkdir -p $NETLIFY_BUILD_BASE/cache/our_node_modules
ln -s $NETLIFY_BUILD_BASE/cache/our_node_modules
npm install
