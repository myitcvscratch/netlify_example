#!/usr/bin/env bash

set -eu

mkdir -p _functions
go build -o ./_functions/hello-lambda ./functions/hello
mkdir -p $NETLIFY_CACHE_DIR/our_node_modules
ln -s $NETLIFY_CACHE_DIR/our_node_modules node_modules
npm install
