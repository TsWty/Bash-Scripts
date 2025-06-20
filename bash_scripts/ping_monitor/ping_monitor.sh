#!/bin/bash

TARGET_HOST="${1:-8.8.8.8}"

LOG_FILE="$HOME/ping_monitor_log.txt"
NOW=$(date "+%Y-%m-%d %H:%M:%S")

echo "[$NOW] Pinging $TARGET_HOST..." >> "$LOG_FILE"
ping -c 4 "$TARGET_HOST" >> "$LOG_FILE" 2>&1

if [ $? -eq 0 ]; then
  echo "Ping successful." >> "$LOG_FILE"
else
  echo "Ping failed!" >> "$LOG_FILE"
fi

echo "" >> "$LOG_FILE"
