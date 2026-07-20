```markdown
# Eww i3 Dotfiles (E-Ink Dark)

A clean, minimal, and distraction-free i3 desktop environment inspired by the simplicity of e-ink displays[cite: 5]. This project provides a modern i3 desktop while remaining lightweight, readable, and easy to customize[cite: 5]. 

> 🎨 **Design Philosophy:** Unlike many dotfiles that generate colors dynamically, this setup utilizes a **single fixed E-Ink Dark color palette** across the entire desktop environment for maximum visual consistency, calm focus, and reduced eye strain during long sessions[cite: 5].

---

## 📑 Table of Contents
1. [Features & Components](#-features--included-components)
2. [Supported Distributions](#-supported-distributions)
3. [1. Clone Repository](#1-clone-repository)
4. [2. Required Packages (Debian 13)](#2-required-packages-debian-13)
5. [3. Recommended Applications](#3-recommended-applications)
6. [4. Install Eww (From Source)](#4-install-eww)
7. [5. Install Autotiling](#5-install-autotiling)
8. [6. Install Fonts](#6-install-fonts)
9. [7. GTK Theme & Icon Setup](#7-gtk-theme)
10. [8. Lock Screen (i3lock-color)](#8-lock-screen)
11. [9. Install Configuration](#9-install-configuration)
12. [10. Make Scripts Executable](#10-make-scripts-executable)
13. [11. Login Manager](#11-login-manager)
14. [12. Audio & Media Services](#12-audio)
15. [13. Weather Widget Setup](#13-weather-widget)
16. [14. Screenshots](#14-screenshots)
17. [15. Browser & App Dock Integration](#15-browser-integration-to-dock)
18. [16. Directory & Repository Structures](#16-directory-structure)
19. [17. First Boot Checklist](#17-first-boot-checklist)

---

## 💎 Features & Included Components

This ecosystem integrates the following core components natively into the workflow[cite: 5]:

*   **Window Manager:** i3 Window Manager with Autotiling support[cite: 5].
*   **Widgets & Bar:** Eww (Elkowar's Wacky Widgets)[cite: 5].
*   **Launcher:** Rofi application menus and power prompts[cite: 5].
*   **Compositor & Notifications:** Picom (effects) & Dunst (notifications)[cite: 5].
*   **Themes & Styling:** Colloid Dark GTK Theme, Colloid Dark Icons, and JetBrains Mono Nerd Font[cite: 5].
*   **File & Media Utilities:** Thunar (with archive plugins), MPD, MPC, mpDris2, Cava Audio Visualizer, and scrot[cite: 5].
*   **Security:** i3lock-color integration[cite: 5].
*   **Core Footprint:** Single wallpaper, fixed E-Ink palette, lightweight framework built Debian-first[cite: 5].

---

## 🐧 Supported Distributions

| Status | Distribution / OS | Notes |
| :--- | :--- | :--- |
| **Officially Tested** | Debian 13 (Trixie)[cite: 5] | Target baseline platform[cite: 5]. |
| **Should Work** | Debian Testing, Ubuntu, Linux Mint, Pop!_OS, Fedora, Arch Linux, EndeavourOS, CachyOS[cite: 5] | Configuration logic is identical; only native package manager names differ[cite: 5]. |

---

## 1. Clone Repository

Choose one of the following recommended paths to clone the project locally[cite: 5]:

### Option A: Downloads Directory
```bash
cd ~/Downloads
git clone [https://github.com/6aru/ewwi3.git](https://github.com/6aru/ewwi3.git)
cd ewwi3

```

### Option B: Projects Directory

```bash
cd ~/Projects
git clone [https://github.com/6aru/ewwi3.git](https://github.com/6aru/ewwi3.git)
cd ewwi3

```

---

## 2. Required Packages (Debian 13)

Update your local repository lists and install all structural dependencies, core system utilities, libraries, and interpreters:

```bash
sudo apt update && sudo apt install -y \
  i3-wm rofi picom dunst feh xsettingsd dex xss-lock i3lock xclip scrot socat \
  playerctl mpdris2 brightnessctl pamixer pipewire wireplumber imagemagick jq bc curl \
  python3 python3-pip python3-i3ipc python3-psutil python3-dbus python3-xlib python3-gi \
  gir1.2-gtk-3.0 inotify-tools xdotool xdg-user-dirs network-manager network-manager-gnome \
  policykit-1-gnome lxpolkit gvfs gvfs-backends fonts-noto fonts-noto-cjk \
  fonts-noto-color-emoji fonts-font-awesome fonts-dejavu fonts-liberation2 \
  mpd mpc mpv cava thunar thunar-archive-plugin file-roller p7zip-full unzip zip zstd

```

---

## 3. Recommended Applications

Install standard user applications mapped to default workflows:

```bash
# Core applications via package manager
sudo apt install firefox-esr kitty

```

> 📥 **Manual Deployments:** Apps like **Brave**, **Ghostty**, **Discord**, and **rmpc** should be installed manually following their respective vendor documentation.
> 
> 

---

## 4. Install Eww

Because upstream repositories often contain outdated builds, compiling **Eww** directly from source ensures runtime stability and compatibility with modern features.

### Step A: Build Dependencies

```bash
sudo apt install -y \
    build-essential pkg-config rustc cargo libgtk-3-dev libglib2.0-dev \
    libgdk-pixbuf-2.0-dev libcairo2-dev libpango1.0-dev libgtk-layer-shell-dev \
    libdbusmenu-glib-dev libdbusmenu-gtk3-dev libx11-dev libxrandr-dev \
    libxinerama-dev libxi-dev libxext-dev libxcb1-dev libxcb-randr0-dev

```

### Step B: Build & Binary Execution Setup

```bash
# Clone the repository
git clone [https://github.com/elkowar/eww](https://github.com/elkowar/eww)
cd eww

# Compile optimized release build
cargo build --release

# Install globally to execution path
sudo cp target/release/eww /usr/local/bin/

# Verify path configuration
eww --version

```

---

## 5. Install Autotiling

Enforce clean layout structures dynamically with python-i3ipc based autotiling:

```bash
# Set up isolated Python application engine
sudo apt install pipx -y

# Install utility environment-wide
pipx install autotiling

```

---

## 6. Install Fonts

Move the project typography assets into your local directory profile to bind unicode icons and typeface rules:

```bash
# Deploy internal repository font assets
cp -r fonts/* ~/.local/share/fonts/

# Rebuild operational font system layouts
fc-cache -fv

```

> 🎯 **Key Typography Bundled:** JetBrains Mono Nerd Font, Noto Sans, and Noto Emoji.
> 
> 

---

## 7. GTK Theme

To map third-party frameworks to the target unified E-Ink look, use the **Colloid Dark** structural theme assets.

### Step A: Fetch Theme Assets

* **GTK Engine Resource:** [Colloid GTK Theme Repository](https://github.com/vinceliuice/Colloid-gtk-theme)

* **Icon Assets Resource:** [Colloid Icon Theme Repository](https://github.com/vinceliuice/Colloid-icon-theme)


### Step B: Activation Layout

Once cloned and deployed locally via their official setup scripts, change selections using one of the following methods:

#### Interface Method

Open `Settings` → `Appearance` (or execute `lxappearance`) and adjust settings to:

* **GTK Theme:** `Colloid-Dark`

* **Icons:** `Colloid-Dark`


#### Daemon Configuration Method (`xsettingsd`)

Modify the properties inside your local file mapping `~/.config/xsettingsd/xsettingsd.conf`:

```text
Net/ThemeName "Colloid-Dark"
Net/IconThemeName "Colloid-Dark"
Gtk/EnableAnimations 0

```

Force clear any existing processes to initialize new settings:

```bash
killall xsettingsd
xsettingsd &

```

---

## 8. Lock Screen

This setup leverages `i3lock-color` to control custom lock state actions.

```bash
# Attempt direct environment installation 
sudo apt install i3lock-color

```

> 💡 *Note:* If the package is missing on your current release, build it from the upstream repository source as detailed below.
> 
> 

### Build i3lock-color from Source (Recommended)

```bash
# Toolchain requirements
sudo apt install -y \
  autoconf gcc make pkg-config libpam0g-dev libcairo2-dev libfontconfig1-dev \
  libxcb-composite0-dev libev-dev libx11-xcb-dev libxcb-xkb-dev libxcb-xinerama0-dev \
  libxcb-randr0-dev libxcb-image0-dev libxcb-util0-dev libxcb-xrm-dev \
  libxkbcommon-dev libxkbcommon-x11-dev libgif-dev libjpeg-dev git

# Build procedures
git clone [https://github.com/Raymo111/i3lock-color.git](https://github.com/Raymo111/i3lock-color.git)
cd i3lock-color
./build.sh
sudo ./install-i3lock-color.sh

# Verify output matches extended framework specifications
i3lock --version

```

* **Operational Shortcut Mapping:** `Super` + `L`


---

## 9. Install Configuration

Synchronize repository dotfile maps directly to your user's config target path:

```bash
cp -r .config/* ~/.config/

```

### Finalized Target Path Map

```text
~/.config/
├── dunst/        # Notification Style Profiles
├── eww/          # Layout Bar Design Configs
├── i3/           # WM Window Actions & Binds
├── picom/        # Render Layer Properties
├── rofi/         # Text Menus and App Overlays
├── scripts/      # Automation Operations
├── xsettingsd/   # Base Desktop Uniform System Specs
└── wallpaper/    # E-Ink Graphics Target File

```

---

## 10. Make Scripts Executable

Ensure your shell engine has execution privileges over all runtime automation parameters:

```bash
find ~/.config/ -type f \( -name "*.sh" -o -name "*.py" \) -exec chmod +x {} \;

```

---

## 11. Login Manager

Recommended Display Managers:

* **LightDM**

* **SDDM**


> ⚠️ **Important:** Remember to manually select the **i3** option from your display manager session menu before passing key parameters to authenticate login.
> 
> 

---

## 12. Audio

Audio management is powered by PipeWire with integrated volume automation controls:

```bash
# Core tool verification check
# Ensure pipewire, wireplumber, pamixer, playerctl are installed.

# Enable background background music engines at user layer
systemctl --user enable --now mpd
systemctl --user enable --now mpDris2

```

---

## 13. Weather Widget

The widget tracks environmental metrics calling the free Open-Meteo REST service API. Update local coordinates inside `~/.config/eww/scripts/weather.sh`:

```bash
# Use your preferred editor to set target constraints:
# Latitude, Longitude, Language, Units
nano ~/.config/eww/scripts/weather.sh

```

---

## 14. Screenshots

Screenshots are powered by `scrot`.

* **Output Path Location:** `~/Pictures/Screenshots/`


```bash
# Ensure target destination path structure exists
mkdir -p ~/Pictures/Screenshots

```

---

## 15. Browser Integration to Dock

The dock reads application mappings from raw key objects rather than parsing complex desktop launcher configurations. To append or modify shortcuts, edit the JSON file at `~/.config/eww/apps.json`:

### Example Key Formats

```json
// Example: Reverse domain standard launcher identification
{ "name": "org.telegram.desktop" }

// Example: Standard internal package application name target
{ "name": "discord" }

```

### Current Default Dock Applications

* Firefox ESR, Brave, Kitty, Thunar, LocalSend.



---

## 16. Directory Structure

### Runtime Target Configs Layout (`~/.config/`)

```text
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

### Project Repository Base Layout

```text
ewwi3/
├── .config/
│   ├── dunst/
│   ├── eww/
│   ├── i3/
│   ├── picom/
│   ├── rofi/
│   ├── scripts/
│   └── xsettingsd/
├── wallpaper/
│   └── eink.jpg
├── fonts/
│   ├── GrapeNuts-Regular.ttf
│   ├── Icomoon-Feather.ttf
│   ├── Iosevka-Nerd-Font-Complete.ttf
│   └── JetBrains-Mono-Nerd-Font-Complete.ttf
├── GUIDE.md
└── README.md

```

---

## 17. First Boot Checklist

Follow these checklist steps for a clean implementation on your first run:

* [ ] Core operating system dependencies successfully deployed via `apt`.


* [ ] Compiled and installed the executable binary for `eww` from source.


* [ ] Autotiling layer running locally via `pipx` configuration.


* [ ] Moved fonts into local profiles and parsed cache changes (`fc-cache -fv`).


* [ ] Cloned and deployed Colloid-Dark system themes and operational desktop icons.


* [ ] Synced internal components over into user target path mapping `~/.config/`.


* [ ] Confirmed source wallpaper file tracks properly inside `~/.config/wallpaper/eink.jpg`.


* [ ] Executed script privilege updates on operational configurations and automation modules.


* [ ] Logged completely out of current active window workspace environment.


* [ ] Explicitly specified **i3** session layer from display initialization manager.


* [ ] Initialized system entry session successfully.



---

## 🧘 Main Philosophy

This workspace values structural efficiency over endless custom choices. Instead of packaging dynamic color pickers or bloated configuration engines, it focuses on one highly polished, static **E-Ink Dark** profile crafted specifically for reading, programming, and long work sessions.

The system provides a workflow that remains:

* **Minimal & Calm:** Reduced visual noise keeps your attention on your work.


* **Consistent:** Every UI widget, container pane, drop shadow, system launcher, background notification script, and app container honors the same fixed aesthetic.


* **Easy to Maintain:** No overly complex configuration abstractions, ideal for beginners, and built with solid Debian principles in mind.



```

```
