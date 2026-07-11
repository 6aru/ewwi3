#!/bin/bash

# File untuk menyimpan status
STATUS_FILE="/tmp/night_mode_status"

# Cek status saat ini
if [ -f "$STATUS_FILE" ] && [ "$(cat $STATUS_FILE)" = "on" ]; then
    # Matikan night mode dan RESET gamma ke default
    pkill -x redshift
    redshift -x  # Reset gamma
    echo "off" > "$STATUS_FILE"
else
    # Nyalakan night mode
    redshift -O 3400 -b 0.9 &
    echo "on" > "$STATUS_FILE"
fi
