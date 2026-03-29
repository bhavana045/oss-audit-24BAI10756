#!/bin/bash
# Script 5: Open Source Manifesto Generator
# Author: Bhavana Varma

echo "=========================================="
echo "    Open Source Manifesto Generator"
echo "=========================================="
echo ""

# --- User Input ---
read -p "1. Name one open-source tool you use every day: " TOOL
read -p "2. In one word, what does 'freedom' mean to you? " FREEDOM
read -p "3. Name one thing you would build and share freely: " BUILD

# --- Date and Output File ---
DATE=$(date '+%d %B %Y')
OUTPUT="manifesto_$(whoami).txt"

# --- Generate Manifesto ---
echo "------------------------------------------" > $OUTPUT
echo "        My Open Source Manifesto" >> $OUTPUT
echo "------------------------------------------" >> $OUTPUT
echo "Date: $DATE" >> $OUTPUT
echo "" >> $OUTPUT

echo "Every day, I use tools like $TOOL which represent collaboration and shared knowledge." >> $OUTPUT
echo "To me, freedom means $FREEDOM - the ability to learn and modify." >> $OUTPUT
echo "In the future, I aim to build $BUILD and share it openly with the world," >> $OUTPUT
echo "so others can learn, improve, and innovate further." >> $OUTPUT
echo "" >> $OUTPUT

# --- Output Result ---
echo ""
echo "Manifesto successfully generated!"
echo "Saved as: $OUTPUT"
echo ""

# --- Display File Content ---
cat $OUTPUT
