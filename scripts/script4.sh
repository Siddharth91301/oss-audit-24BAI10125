#!/bin/bash
# Script 4: Log File Analyzer
# Author: Siddharth Ranjan | Reg No: 24BAI10125

LOGFILE=$1
KEYWORD=${2:-"error"}   # default keyword = error
COUNT=0

if [ ! -f "$LOGFILE" ]; then
  echo "Error: File $LOGFILE not found."
  exit 1
fi

while IFS= read -r LINE; do
  if echo "$LINE" | grep -iq "$KEYWORD"; then
    COUNT=$((COUNT + 1))
  fi
done < "$LOGFILE"

echo "Keyword '$KEYWORD' found $COUNT times in $LOGFILE"
