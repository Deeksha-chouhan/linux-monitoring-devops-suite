#!/bin/bash

DATE=$(date +%Y%m%d_%H%M%S)

mkdir -p backups

tar -czf backups/etc_backup_$DATE.tar.gz /etc

echo "Backup created: etc_backup_$DATE.tar.gz"
