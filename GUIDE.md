# Eww i3 Dotfiles (E-Ink Dark)

A clean, minimal, and distraction-free i3 desktop environment inspired by the simplicity of e-ink displays.

This project is designed to provide a modern i3 desktop while remaining lightweight, readable, and easy to customize.

Unlike many dotfiles that generate colors dynamically, this setup uses a **single fixed E-Ink Dark color palette** throughout the entire desktop.

---

# Features

- i3 Window Manager
- Eww Widgets
- Rofi Launcher
- Dunst Notifications
- Picom Compositor
- Firefox ESR support
- Brave support
- Ghostty support
- Thunar File Manager
- MPD support
- Cava Audio Visualizer
- i3lock Lock Screen
- Autotiling
- Colloid Dark GTK Theme
- Colloid Dark Icons
- JetBrains Mono Nerd Font
- Single Wallpaper
- Single Color Scheme
- Lightweight
- Debian First

---

# Supported Distributions

Officially Tested

- Debian 13

Should Work

- Debian Testing
- Ubuntu
- Linux Mint
- Pop!_OS
- Fedora
- Arch Linux
- EndeavourOS
- CachyOS

Only package names differ.

---

# 1. Clone Repository

Clone the repository anywhere.

Recommended locations:

```bash
cd ~/Downloads

git clone https://github.com/6aru/ewwi3.git

cd ewwi3
```

or

```bash
cd ~/Projects

git clone https://github.com/6aru/ewwi3.git

cd ewwi3
```

---

# 2. Required Packages (Debian 13)

Update packages first.

```bash
sudo apt update
```

Install required packages.

```bash
sudo apt install \
i3-wm \
rofi \
picom \
dunst \
feh \
xsettingsd \
dex \
xss-lock \
i3lock \
xclip \
scrot \
playerctl \
brightnessctl \
pamixer \
pipewire \
wireplumber \
imagemagick \
jq \
bc \
curl \
python3 \
python3-pip \
python3-i3ipc \
python3-psutil \
python3-dbus \
python3-xlib \
python3-gi \
gir1.2-gtk-3.0 \
inotify-tools \
xdotool \
xdg-user-dirs \
network-manager \
network-manager-gnome \
policykit-1-gnome \
lxpolkit \
gvfs \
gvfs-backends \
fonts-noto \
fonts-noto-cjk \
fonts-noto-color-emoji \
fonts-font-awesome \
fonts-dejavu \
fonts-liberation2 \
mpd \
mpc \
mpv \
cava \
thunar \
thunar-archive-plugin \
file-roller \
p7zip-full \
unzip \
zip \
zstd
```

---

# 3. Recommended Applications

Install Firefox ESR.

```bash
sudo apt install firefox-esr
```

Install manually.

- Brave
- Ghostty
- LocalSend
- Discord
- rmpc

---

# 4. Install Eww

Debian repositories usually contain an older version.

Building from source is recommended.

Install dependencies.

```bash
sudo apt install \
cargo \
rustc \
libgtk-3-dev \
libglib2.0-dev \
libgdk-pixbuf-2.0-dev \
libpango1.0-dev \
libcairo2-dev
```

Clone.

```bash
git clone https://github.com/elkowar/eww

cd eww
```

Build.

```bash
cargo build --release
```

Install.

```bash
sudo cp target/release/eww /usr/local/bin/
```

Verify.

```bash
eww --version
```

---

# 5. Install Autotiling

```bash
pip3 install --user autotiling
```

Start automatically.

Add to your i3 config.

```bash
exec --no-startup-id autotiling
```

---

# 6. Install Fonts

Copy everything inside

```
fonts/
```

to

```
~/.local/share/fonts/
```

Refresh font cache.

```bash
fc-cache -fv
```

Recommended Fonts

- JetBrains Mono Nerd Font
- Noto Sans
- Noto Emoji

---

# 7. GTK Theme

Recommended

GTK Theme

```
Colloid-Dark
```

Icons

```
Colloid-Dark
```

Set using

```bash
lxappearance
```

or

```
~/.config/xsettingsd/xsettingsd.conf
```

Example

```
Net/ThemeName "Colloid-Dark"

Net/IconThemeName "Colloid-Dark"

Gtk/EnableAnimations 0
```

Restart xsettingsd.

```bash
killall xsettingsd

xsettingsd &
```

---

# 8. Wallpaper

Copy

```
wallpaper/eink.jpg
```

to

```
~/.config/wallpaper/
```

Final path

```
~/.config/wallpaper/eink.jpg
```

---

# 9. Install Configuration

Copy the repository's

```
i3/
```

folder into

```
~/.config/
```

Final structure

```
~/.config/i3
~/.config/i3/eww
~/.config/i3/rofi
~/.config/i3/dunst
~/.config/i3/picom
```

---

# 10. Make Scripts Executable

Run

```bash
find ~/.config/i3 -type f \( -name "*.sh" -o -name "*.py" \) -exec chmod +x {} \;
```

---

# 11. Login Manager

Recommended

- LightDM
- SDDM

Select

```
i3
```

from the session menu before logging in.

---

# 12. Audio

This configuration uses PipeWire.

Install

- PipeWire
- WirePlumber
- Pamixer
- Playerctl

---

# 13. Notifications

Notification daemon

```
Dunst
```

Restart

```bash
killall dunst

dunst &
```

---

# 14. Lock Screen

Uses

```
i3lock
```

Shortcut

```
Super + L
```

---

# 15. Weather Widget

Uses

Open-Meteo API

Edit

```
~/.config/eww/scripts/weather.sh
```

Configure

- Latitude
- Longitude
- Language
- Units

---

# 16. Screenshots

Uses

```
scrot
```

Output directory

```
~/Pictures/Screenshots/
```

---

# 17. Browser Integration

The dock uses **Firefox ESR tabs** instead of desktop launchers.

Recommended pinned tabs

- YouTube
- ChatGPT
- Reddit
- Crunchyroll

Applications

- Firefox ESR
- Brave
- Ghostty
- Thunar
- LocalSend

---

# 18. Directory Structure

```
.
├── fonts/
├── i3/
│   ├── eww/
│   ├── rofi/
│   ├── dunst/
│   ├── picom/
│   ├── scripts/
│   ├── xsettingsd/
│   ├── config
│   └── config-dotfiles
├── wallpaper/
│   └── eink.jpg
├── README.md
└── GUIDE.md
```

---

# 19. Not Included

This configuration intentionally does **not** include

- m3wal
- pywal
- sxhkd
- Alacritty
- Fastfetch
- Material You dynamic colors

Everything uses a **single fixed E-Ink Dark color palette**.

---

# 20. First Boot Checklist

- Install required packages
- Build and install Eww
- Install Autotiling
- Install fonts
- Run `fc-cache -fv`
- Install Colloid Dark GTK theme
- Install Colloid Dark icons
- Copy `i3/` to `~/.config/`
- Copy `eink.jpg` to `~/.config/wallpaper/`
- Make all scripts executable
- Log out
- Select the **i3** session
- Log back in

---

# Included Components

- i3
- Eww
- Rofi
- Picom
- Dunst
- Firefox ESR
- Brave
- Ghostty
- Thunar
- MPD
- Cava
- i3lock
- PipeWire
- Playerctl
- Pamixer
- Colloid Dark GTK
- Colloid Dark Icons
- JetBrains Mono Nerd Font

---

# Philosophy

This project focuses on simplicity over customization.

Instead of offering multiple themes or dynamically generated color palettes, it provides one carefully designed **E-Ink Dark** theme intended for long coding sessions, reading, and daily use.

The goal is to create a desktop that is:

- Minimal
- Calm
- Consistent
- Lightweight
- Easy to maintain
- Beginner friendly
- Debian focused

Every application, widget, launcher, notification, and script follows the same visual style to provide a cohesive desktop experience.
