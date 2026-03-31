#!/bin/bash
# Script 3: Disk and Permission Auditor
# Author: Siddharth Ranjan | Reg No: 24BAI10125

echo "Directory Audit Report"
echo "----------------------"

DIRS=("/etc" "/var/log" "/home" "/usr/bin" "/tmp")

for DIR in "${DIRS[@]}"; do
  if [ -d "$DIR" ]; then
    PERMS=$(ls -ld "$DIR" | awk '{print $1, $3, $4}')
    SIZE=$(du -sh "$DIR" 2>/dev/null | cut -f1)
    echo "$DIR => Permissions: $PERMS | Size: $SIZE"
  else
    echo "$DIR does not exist on this system"
  fi
done
