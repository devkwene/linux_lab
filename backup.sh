#!/bin/bash

# Check if a directory argument was provided
if [ -z "$1" ]; then
  echo "ERROR: No directory provided."
  echo "Usage: ./backup.sh <directory>"
  exit 1
fi

# Check if the directory exists
if [ ! -d "$1" ]; then
  echo "ERROR: Directory '$1' does not exist."
  exit 1
fi

# Create timestamp
DATE=$(date +%Y%m%d)

# Backup filename
BACKUP_NAME="backup_${DATE}.tar.gz"

# Create the backup
tar -czf "$BACKUP_NAME" "$1"

# Check if backup succeeded
if [ $? -eq 0 ]; then
  echo "SUCCESS: Backup created as $BACKUP_NAME"
else
  echo "ERROR: Backup failed."
fi
