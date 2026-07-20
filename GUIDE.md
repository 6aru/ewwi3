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
socat \
playerctl \
mpdris2 \
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
```bash
sudo apt install kitty
```
Install manually.

- Brave
- Ghostty
- Discord
- rmpc

---

# 4. Install Eww

Debian repositories usually contain an older version.

Building from source is recommended.

Install dependencies.

```bash
sudo apt install \
    build-essential \
    pkg-config \
    rustc \
    cargo \
    libgtk-3-dev \
    libglib2.0-dev \
    libgdk-pixbuf-2.0-dev \
    libcairo2-dev \
    libpango1.0-dev \
    libgtk-layer-shell-dev \
    libdbusmenu-glib-dev \
    libdbusmenu-gtk3-dev \
    libx11-dev \
    libxrandr-dev \
    libxinerama-dev \
    libxi-dev \
    libxext-dev \
    libxcb1-dev \
    libxcb-randr0-dev
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

Install dependencie.
```bash
sudo apt install pipx -y
```
Install. 
```bash
pipx install autotiling
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

Recommended.
## Install Colloid GTK & Icons

This setup uses the **Colloid Dark** GTK theme and icon pack.

Please follow the official installation guide before continuing.

### GTK Theme
https://github.com/vinceliuice/Colloid-gtk-theme

### Icon Theme
https://github.com/vinceliuice/Colloid-icon-theme

After installation, open:

Settings → Appearance

Select:

- GTK Theme → Colloid Dark
- Icons → Colloid Dark

GTK Theme

```
Colloid-Dark
```

Icons

```
Colloid-Dark
```

or

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

# 8. Lock Screen

Uses

```
i3lock-color
```
>Try
```bash
sudo apt install i3lock-color
```
>If nothing is found, don't worry. Some Debian releases don't package it separately because Debian ships the upstream i3lock instead.

>(Recommended)Build i3lock-color from source.
Install dependencies.
```bash
sudo apt install \
  autoconf gcc make pkg-config \
  libpam0g-dev libcairo2-dev libfontconfig1-dev \
  libxcb-composite0-dev libev-dev libx11-xcb-dev \
  libxcb-xkb-dev libxcb-xinerama0-dev \
  libxcb-randr0-dev libxcb-image0-dev \
  libxcb-util0-dev libxcb-xrm-dev \
  libxkbcommon-dev libxkbcommon-x11-dev \
  libgif-dev/
  libjpeg-dev git
```
Clone.
```bash
git clone https://github.com/Raymo111/i3lock-color.git
cd i3lock-color
```
Build.
```bash
./build.sh
sudo ./install-i3lock-color.sh
```
Verify.
```bash
i3lock --version
```
> should report i3lock-color.

Shortcut

```
Super + L
```
---

# 9. Install Configuration

Copy the config/Dotfiles into your `~/.config` directory.

```bash
cp -r .config/* ~/.config/
```

>Final Structure
```
config/
├── dunst/
├── eww/
├── i3/
├── picom/
├── rofi/
├── scripts/
├── xsettingsd/
├── wallpaper/
```

---

# 10. Make Scripts Executable

Run

```bash
find ~/.config/ -type f \( -name "*.sh" -o -name "*.py" \) -exec chmod +x {} \;
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

>Start Mpd & mpDris2 for music widget to work.
```bash
systemctl --user enable --now mpDris2
```
```bash
systemctl --user enable --now mpd
```
----
# 13. Weather Widget

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

# 14. Screenshots

Uses

```
scrot
```

Output directory

```
~/Pictures/Screenshots/
```
>If Screenshots folder doesnt exit, create one.
>
---

# 15. Browser Integration to Dock

The dock currently just uses **Applications** instead of desktop launchers.

Add desktop launchers
>Examples:
```text
    "name": "org.telegram.desktop"
```
or 
>Applications
```text
    "name": "discord"
```
> To add/ulter applications check ~/.config/eww/apps.json

Current dock applications

- Firefox ESR
- Brave
- Kitty
- Thunar
- LocalSend

---

# 16. Directory Structure

```
 .config/
    ├── dunst/
    │   └── dunstrc
    ├── eww/
    │   ├── apps.json
    │   ├── assets/
    │   ├── colors.scss
    │   ├── eww.scss
    │   ├── eww.yuck
    │   ├── my-notes.txt
    │   ├── scripts/
    │   ├── styling/
    │   └── widgets/
    ├── i3/
    │   ├── autostart.sh
    │   ├── brightness.sh
    │   ├── config
    │   ├── config-dotfiles
    │   └── i3-help.sh
    ├── picom/
    │   └── picom.conf
    ├── rofi/
    │   ├── config.rasi
    │   ├── dock-confirm.rasi
    │   ├── keybinds.rasi
    │   ├── launchers/
    │   ├── powermenu/
    │   ├── rofi.rasi
    │   └── wifi-password.rasi
    ├── scripts/
    │   ├── lock.sh
    │   ├── ws_cycle.py
    │   └── ws_cycle.sh
    └── wallpaper/
        └── eink.jpg
```

---

# 17. First Boot Checklist

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

## Repo Structure

```text
ewwi3/
├── .config
│   ├── dunst
│   ├── eww
│   ├── i3
│   ├── picom
│   ├── rofi
│   ├── scripts
│   └── xsettingsd
├── wallpaper
│   └── eink.jpg
├── fonts/
│   ├── GrapeNuts-Regular.ttf
│   ├── Icomoon-Feather.ttf
│   ├── Iosevka-Nerd-Font-Complete.ttf
│   └── JetBrains-Mono-Nerd-Font-Complete.ttf
├── GUIDE.md
└── README.md
```

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

Every application, widget, launcher, notification, and script follows the same visual style to provide a cohesive desktop experience. And check out my [**Dotfiles**](https://github.com/6aru/Dotfiles) for Kitty, Fastfetch, mpd, rmpc etc configs. 
