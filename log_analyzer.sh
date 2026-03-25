#!/bin/bash
# Script 4: Log File Analyzer

# Usage: ./log_analyzer.sh <logfile> <keyword>
LOGFILE=$1
KEYWORD=${2:-"error"} # Default keyword is 'error' if none is provided
COUNT=0

# --- DO-WHILE STYLE RETRY ---
# This loop repeats if the file is empty (size is 0)
until [ -s "$LOGFILE" ]; do
    if [ ! -f "$LOGFILE" ]; then
        echo "Error: File $LOGFILE does not exist. Waiting..."
    else
        echo "File $LOGFILE is currently empty. Please add content or wait."
    fi
    echo "Retrying in 5 seconds... (Press Ctrl+C to cancel)"
    sleep 5
done

echo "------------------------------------------"
echo "Analyzing: $LOGFILE for keyword: '$KEYWORD'"
echo "------------------------------------------"

# --- WHILE-READ LOOP ---
# Reads the file line by line
while IFS= read -r LINE; do
    # -i makes it case-insensitive, -q makes it quiet
    if echo "$LINE" | grep -iq "$KEYWORD"; then
        COUNT=$((COUNT + 1))
    fi
done < "$LOGFILE"

# --- SUMMARY & TAIL ---
echo "Scan Complete."
echo "Keyword '$KEYWORD' found $COUNT times."
echo ""
echo "Last 5 matching entries:"
grep -i "$KEYWORD" "$LOGFILE" | tail -n 5
echo "------------------------------------------"
