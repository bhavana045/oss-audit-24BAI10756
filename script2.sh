#!/bin/bash
# Script 2: FOSS Package Inspector
# Author: Bhavana Varma

#---Package(VLC chosen)---
PACKAGE="VLC"

echo "=========================================="
echo "        FOSS Package Inspector"
echo "=========================================="

# --- Check if package is installed ---
if dpkg -l | grep -qw $PACKAGE; then
    echo "$PACKAGE is installed"
    echo "........................"

    # Show package details
    dpkg -s $PACKAGE | grep -E 'Version|Maintainer|Description'
else
    echo "$PACKAGE is NOT installed"
fi

echo ".........................................."

# --- Case statement for philosophy note ---
case $PACKAGE in
    VLC)
        echo "VLC: A powerful open-source media player that can play almost any format freely."
        ;;
    firefox)
        echo "FireFox: A browser built to protect privacy and keep the web open."
        ;;
    git)
        echo "Git: A distributed version control system empowering developers worldwide."
        ;;
    python3)
        echo "Python: A community-driven language for innovation and simplicity."
        ;;
    *)
        echo "Unknown package: No philosophy note available."
        ;;
esac

echo "=========================================="
