#!/bin/bash
set -e

rm -f /compose-on-rails/tmp/pids/server.pid
exec "$@"
