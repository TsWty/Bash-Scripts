#!/bin/bash

TARGET_DIR="$HOME/Downloads"
DAYS_OLD=30

LOG_FILE="$HOME/old_file_cleanup_log.txt"
NOW=$(date "+%Y-%m-%d %H:%M:%S")

echo "[$NOW] Cleaning files not accessed in $DAYS_OLD+ days from: $TARGET_DIR" >> "$LOG_FILE"

find "$TARGET_DIR" -type f -atime +$DAYS_OLD -exec rm -v {} \; >> "$LOG_FILE" 2>&1

echo "Cleanup completed." >> "$LOG_FILE"
