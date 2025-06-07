#!/bin/bash

# directory to back up
SOURCE_DIR="$HOME/Documents"
# where to save the backup
BACKUP_DIR="$HOME/Backups"

# create the backup folder if it doesn't exist
mkdir -p "$BACKUP_DIR"

# get current date and time
DATE=$(date +"%Y-%m-%d_%H-%M-%S")

# create backup file name
BACKUP_FILE="backup_$DATE.tar.gz"

# compress and save the backup
tar -czf "$BACKUP_DIR/$BACKUP_FILE" "$SOURCE_DIR"

echo "backup completed: $BACKUP_DIR/$BACKUP_FILE"
