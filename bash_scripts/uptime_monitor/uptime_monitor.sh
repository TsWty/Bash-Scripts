#!/bin/bash

LOG_FILE="$HOME/uptime_performance_log.txt"

NOW=$(date "+%Y-%m-%d %H:%M:%S")

UPTIME=$(uptime -p)

LOAD_AVG=$(uptime | awk -F'load average:' '{ print $2 }')

MEMORY=$(free -m | awk 'NR==2{printf "used: %smb / total: %smb", $3, $2}')

echo "[$NOW] uptime: $UPTIME | load avg:$LOAD_AVG | memory: $MEMORY" >> "$LOG_FILE"
