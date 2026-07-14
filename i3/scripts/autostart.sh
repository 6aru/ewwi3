#!/bin/bash
# Autostart script for i3

# 1. System Settings 
setxkbmap us &

# 2. Notification Daemon (harus duluan sebelum yang lain)
pgrep -x dunst > /dev/null || dunst &
sleep 0.3

# Authentication Agent
/usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1 &

# 3. Wallpaper
feh --no-fehbg --bg-fill ~/.config/wallpaper/eink.jpg &

# 4. Compositor 
killall -q picom

while pgrep -x picom >/dev/null; do
    sleep 0.1
done

picom --experimental-backends &

# 6. Settings Daemon
pgrep -x xsettingsd > /dev/null || xsettingsd &

# 7. Widgets (Eww)
killall eww 2>/dev/null
eww daemon
while ! eww ping &>/dev/null; do sleep 0.1; done
eww open bar

# 8. Monitor Scripts
pkill -f fullscreen-monitor
python3 ~/.config/i3/eww/scripts/fullscreen-monitor.py &

pkill -f dock-autohide
python3 ~/.config/i3/eww/scripts/dock-autohide.py &
