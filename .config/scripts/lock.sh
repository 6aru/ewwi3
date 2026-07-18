#!/usr/bin/env bash

WALLPAPER="$HOME/.config/wallpaper/eink.jpg"
LOCK_IMG="$HOME/.config/wallpaper/lockscreen.png"

i3lock \
    --image "$LOCK_IMG" \
    --fill \
    --clock \
    --time-str="%H:%M" \
    --date-str="%A, %d %B" \
    --radius 120 \
    --ring-width 10 \
    --inside-color=18181800 \
    --ring-color=4D4D4D88 \
    --line-color=18181800 \
    --keyhl-color=D6D1C8ff \
    --bshl-color=B76B6Bff \
    --separator-color=18181800 \
    --insidever-color=18181800 \
    --ringver-color=D6D1C8ff \
    --insidewrong-color=B76B6B33 \
    --ringwrong-color=B76B6Bff \
    --time-color=ECE8DFff \
    --date-color=BDB7ACff \
    --verif-color=ECE8DFff \
    --wrong-color=B76B6Bff \
    --nofork
