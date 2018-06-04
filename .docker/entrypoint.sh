#!/bin/bash

set -e
set -x

echo "Starting http server"
cd /app && python -m SimpleHTTPServer &

echo "Watcher"
cd /app && pub get &&  pub run build_runner watch --delete-conflicting-outputs
