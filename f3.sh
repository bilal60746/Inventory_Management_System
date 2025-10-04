#!/bin/bash

# Directory to backup
SRC_DIR="/var/www/html/Inventory_Management_System"

# Backup destination
BACKUP_DIR="/home/ubuntu/backups"

# Create backup directory if not exists
mkdir -p "$BACKUP_DIR"

# Create a timestamp
TIMESTAMP=$(date +"%Y%m%d_%H%M%S")

# Backup filename
BACKUP_FILE="$BACKUP_DIR/backup_$TIMESTAMP.tar.gz"

# Create the backup
tar -czf "$BACKUP_FILE" -C "$SRC_DIR" .

echo "Backup completed: $BACKUP_FILE"
