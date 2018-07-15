#!/bin/sh -e

bundle check || bundle install
yarn install

rm ../tmp/pids/*.pid 2>/dev/null || true

exec "$@"
