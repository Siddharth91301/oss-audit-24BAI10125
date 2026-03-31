#!/bin/bash
# Script 5: Open Source Manifesto Generator
# Author: Siddharth Ranjan | Reg No: 24BAI10125

echo "Answer the following questions:"
echo ""

read -p "1. Name one open-source tool you use every day: " TOOL
read -p "2. In one word, what does 'freedom' mean to you? " FREEDOM
read -p "3. Name one thing you would build and share freely: " BUILD

DATE=$(date '+%d %B %Y')
OUTPUT="manifesto_$(whoami).txt"

echo "" > "$OUTPUT"
echo "Open Source Manifesto" >> "$OUTPUT"
echo "Date: $DATE" >> "$OUTPUT"
echo "" >> "$OUTPUT"

echo "I use $TOOL in my daily life, and it shows how open-source software can make technology accessible to everyone." >> "$OUTPUT"
echo "To me, freedom means $FREEDOM. This idea is important because it allows people to learn, modify, and share software without restrictions." >> "$OUTPUT"
echo "If given a chance, I would build $BUILD and share it openly so others can benefit from it." >> "$OUTPUT"

echo ""
echo "Manifesto saved to $OUTPUT"
cat "$OUTPUT"
