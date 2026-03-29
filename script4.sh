#!/bin/bash
# Script 4: Log File Analyzer
# Author: Bhavana Varma
# Usage: ./script4.sh /var/log/syslog error

LOGFILE=$1
KEYWORD=${2:-"error"}     # Default keyword = error
COUNT=0

echo "=========================================="
echo "        Log File Analyzer"
echo "=========================================="

# --- check if file exists ---
if [ ! -f "$LOGFILE" ]; then
    echo "Error: File $LOGFILE not found"
    exit 1
fi

# --- Check if file is empty ---
if [ ! -s "$LOGFILE" ]; then
    echo "Warning: File is empty"

    # Retry loop (do-while style)
    while [ ! -s "$LOGFILE" ]; do
        echo "Waiting for log file to have content..."
        sleep 2
    done
fi

# --- Read file line by line ---
while IFS= read -r LINE; do
    if echo "$LINE" | grep -iq "$KEYWORD"; then
        COUNT=$((COUNT + 1))
    fi
done < "$LOGFILE"

echo ".........................................."
echo "Total occurrences of '$KEYWORD': $COUNT"
echo "=========================================="
