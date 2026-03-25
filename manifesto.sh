#!/bin/bash
# Script 5: Open Source Manifesto Generator

# CONCEPT DEMONSTRATION: Aliases
# In a real shell, you could add: alias myman='cat ~/manifesto_$(whoami).txt'
# to your .bashrc to quickly view this file anytime with one command.

echo "=========================================="
echo "    THE OPEN SOURCE MANIFESTO GENERATOR   "
echo "=========================================="
echo "Answer three questions to define your philosophy."
echo ""

# --- INTERACTIVE USER INPUT ---
read -p "1. Name one open-source tool you use every day: " TOOL
read -p "2. In one word, what does 'freedom' mean to you? " FREEDOM
read -p "3. Name one thing you would build and share freely: " BUILD

# --- DATA PREPARATION ---
DATE=$(date '+%d %B %Y')
USER_NAME=$(whoami)
OUTPUT="manifesto_${USER_NAME}.txt"

# --- COMPOSING THE MANIFESTO (String Concatenation & Redirection) ---
# The '>' symbol creates a new file (overwriting old ones)
echo "OPEN SOURCE MANIFESTO" > "$OUTPUT"
echo "Generated on: $DATE" >> "$OUTPUT"
echo "------------------------------------------" >> "$OUTPUT"

# Composing the paragraph
MANIFESTO_TEXT="As a developer and believer in open collaboration, I recognize that tools like $TOOL are the foundation of our digital world. To me, the core of open source is $FREEDOM. In this spirit, I commit to building and sharing $BUILD with the global community, ensuring that knowledge remains accessible to all."

# The '>>' symbol appends the paragraph to the file
echo "$MANIFESTO_TEXT" >> "$OUTPUT"
echo "" >> "$OUTPUT"
echo "Signed, $USER_NAME" >> "$OUTPUT"

echo ""
echo "Success! Your manifesto has been saved to $OUTPUT"
echo "------------------------------------------"
# --- PRINTING THE RESULT ---
cat "$OUTPUT"
echo "------------------------------------------"
