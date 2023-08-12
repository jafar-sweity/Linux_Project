#!/bin/bash

timestamp=$(date +'%Y-%m-%dT%H:%M:%S')
datestamp=$(date +'%Y-%m-%d')
CURRENT_TIME=$(date +"%Y-%m-%dT%H-%M")
file_name="kernel-logs-$timestamp.txt"
fileCompressed="kernel-logs-$CURRENT_TIME.tar.bz2"

istart_tim=$(date -d "$timestamp - 1 hour" +'%Y-%m-%dT%H:%M:%S')
journalctl --since "1 hour ago" --no-pager  > "$file_name"

tar -cjf "$fileCompressed" "$file_name"

dbxcli put "$fileCompressed" "/logsProject/$fileCompressed"
rm "$fileCompressed"
rm "$file_name"
echo "Kernel logs saved and uploaded at $fileCompressed"

