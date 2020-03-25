#!/usr/bin/env bash

set -eu

mkdir -p _functions
go build -o ./_functions/hello-lambda ./functions/hello
