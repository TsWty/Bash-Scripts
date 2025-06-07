#!/bin/bash

# File to store memory usage logs
LOG_FILE="$HOME/memory_usage_log.txt"

NOW=$(date "+%Y-%m-%d %H:%M:%S")
MEMORY=$(free -m | awk 'NR==2{printf "used: %sMB / total: %sMB", $3, $2}')

echo "[$NOW] $MEMORY" >> "$LOG_FILE"
