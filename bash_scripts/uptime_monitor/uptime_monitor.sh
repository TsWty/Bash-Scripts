#!/bin/bash

# file to store uptime logs
LOG_FILE="$HOME/uptime_performance_log.txt"

# current date and time
NOW=$(date "+%Y-%m-%d %H:%M:%S")

# get system uptime
UPTIME=$(uptime -p)

# get system load averages
LOAD_AVG=$(uptime | awk -F'load average:' '{ print $2 }')

# get memory usage (in mb)
MEMORY=$(free -m | awk 'NR==2{printf "used: %smb / total: %smb", $3, $2}')

# write the info to the log file
echo "[$NOW] uptime: $UPTIME | load avg:$LOAD_AVG | memory: $MEMORY" >> "$LOG_FILE"
