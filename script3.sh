#!/bin/bash
# Script 3: Disk and Permission Auditor
# Author: Bhavana Varma

# ---Important directories ---
DIRS=("/etc" "/var/log" "/home" "/usr/bin" "/tmp")

echo "=========================================="
echo "        Directory Audit Report"
echo "=========================================="

# --- Loop through directories ---
for DIR in "${DIRS[@]}"; do
    if [ -d "$DIR" ]; then

        # Get permissions, owner, group
        PERMS=$(ls -ld $DIR | awk '{print $1, $3, $4}')

        # Get size of directory
        SIZE=$(du -sh $DIR 2>/dev/null | cut -f1)

        echo "$DIR => Permissions: $PERMS | Size: $SIZE"

    else
        echo "$DIR does not exist on this system"
    fi
done

echo ".........................................."

# --- Check VLC config directory ---
VLC_CONFIG="$HOME/.config/vlc"

echo "Checking VLC Configuration Directory..."

if [ -d "$VLC_CONFIG" ]; then
    PERMS=$(ls -ld $VLC_CONFIG | awk '{print $1, $3, $4}')
    echo "VLC CONFIG Found"
    echo "$VLC_CONFIG => Permissions: $PERMS"
fi
