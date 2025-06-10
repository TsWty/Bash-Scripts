#!/bin/bash

HOST=${1:-"127.0.0.1"}

START_PORT=1
END_PORT=1024

MAX_JOBS=100

scan_port() {
  (echo > /dev/tcp/$HOST/$1) >/dev/null 2>&1 && echo "Port $1 is OPEN"
}

export -f scan_port
export HOST

START_TIME=$(date +%s)

seq $START_PORT $END_PORT | xargs -P "$MAX_JOBS" -I{} bash -c 'scan_port "$1"' _ {}

END_TIME=$(date +%s)
DURATION=$((END_TIME - START_TIME))

echo "Scan completed in $DURATION seconds."
