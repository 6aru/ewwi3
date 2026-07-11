#!/bin/bash

# Cek status bluetooth saat ini
STATUS=$(bluetoothctl show | grep "Powered:" | awk '{print $2}')

if [ "$STATUS" = "yes" ]; then
    # Matikan bluetooth
    bluetoothctl power off
else
    # Nyalakan bluetooth
    bluetoothctl power on
fi
