#!/bin/bash
# Script 2: FOSS Package Inspector
# Author: Siddharth Ranjan | Reg No: 24BAI10125

PACKAGE=$1

if [ -z "$PACKAGE" ]; then
  echo "Usage: ./package_inspector.sh <package-name>"
  exit 1
fi

echo "=============================================="
echo "        FOSS Package Inspector"
echo "=============================================="

# --- Check using dpkg (Ubuntu/WSL) ---
if dpkg -l | grep -qw "$PACKAGE"; then
  echo "$PACKAGE is installed."
  echo "----------------------------------------------"
  dpkg -l | grep "$PACKAGE"
else
  echo "$PACKAGE is NOT installed."
fi

echo "----------------------------------------------"

# --- Philosophy Message ---
case $PACKAGE in
  python3|python)
    echo "Python: a community-driven language that emphasizes simplicity, readability, and open collaboration."
    ;;
  git)
    echo "Git: a distributed system enabling collaborative development worldwide."
    ;;
  vlc)
    echo "VLC: open-source media player built by volunteers."
    ;;
  apache2)
    echo "Apache: backbone of the open web."
    ;;
  *)
    echo "This package reflects the philosophy of free and open-source software."
    ;;
esac

echo "=============================================="
