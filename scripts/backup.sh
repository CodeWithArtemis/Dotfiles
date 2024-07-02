#!/bin/bash

BACKUPS_DESTINATION="/run/media/artemis/Hard Disk/Backup"
# Stop the script if an error occurs
set -e

# Exclude node_modules directories under /home/mischa
rsync -a --delete --quiet --exclude="/home/artemis/*/node_modules" /home/artemis $BACKUPS_DESTINATION/home

# Backup /etc directory
rsync -a --delete --quiet /etc $BACKUPS_DESTINATION

echo "Made backups on: $(date)" >>/var/log/backup.log
