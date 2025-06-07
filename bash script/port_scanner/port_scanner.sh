#!/bin/bash

# Target host
HOST=${1:-"127.0.0.1"}

# port range
START_PORT=1
END_PORT=1024

# max concurrent jobs
MAX_JOBS=100

# function to scan a single port
scan_port() {
  (echo > /dev/tcp/$HOST/$1) >/dev/null 2>&1 && echo "Port $1 is OPEN"
}

# export function for parallel execution
export -f scan_port
export HOST

# time scan
START_TIME=$(date +%s)

# use xargs to manage parallel scanning
# -I already implies -n1 so we omit -n1 to avoid warnings
seq $START_PORT $END_PORT | xargs -P "$MAX_JOBS" -I{} bash -c 'scan_port "$1"' _ {}

END_TIME=$(date +%s)
DURATION=$((END_TIME - START_TIME))

echo "Scan completed in $DURATION seconds."
