#!/bin/bash

# Target directory
TARGET_DIR="$HOME/Downloads"
# Age threshold in days
DAYS_OLD=30

# Log file
LOG_FILE="$HOME/old_file_cleanup_log.txt"
NOW=$(date "+%Y-%m-%d %H:%M:%S")

# Log start
echo "[$NOW] Cleaning files not accessed in $DAYS_OLD+ days from: $TARGET_DIR" >> "$LOG_FILE"

# Find and delete
find "$TARGET_DIR" -type f -atime +$DAYS_OLD -exec rm -v {} \; >> "$LOG_FILE" 2>&1

# Completion log
echo "Cleanup completed." >> "$LOG_FILE"
