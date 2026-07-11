#!/bin/bash
# Simpan sebagai ~/.config/eww/scripts/i3-mode.sh

i3-msg -t subscribe -m '["mode"]' | while read -r line; do
    # Parse JSON untuk mendapatkan nama mode
    mode=$(echo "$line" | jq -r '.change')
    
    # Output mode name (akan dibaca oleh eww sebagai deflisten)
    echo "$mode"
done
