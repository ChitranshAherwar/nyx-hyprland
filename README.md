# Nyx Hyprland

Nyx is my personal Hyprland configuration for EndeavourOS, built from the way I actually use my desktop.

I wanted a setup that stayed out of my way while programming and working in the terminal, so most of the configuration is intentionally focused on keyboard-driven workflows, quick navigation, useful shortcuts, and minimal visual distractions.

The choices here aren't meant to be universal recommendations or a showcase of every Hyprland feature. If something exists in Nyx, there's usually a reason behind it — whether it's something that makes a daily workflow faster, solves a problem I had, or simply makes the desktop feel better to use.

It's also a place where I experiment. As I learn more about Linux, shell scripting, Git, and systems programming, the configuration changes with me.

## Screenshot

![Desktop](screenshots/desktop.png)

## Components

- Hyprland
- Waybar
- Kitty
- Wofi
- Dolphin
- Hyprlock
- Hypridle
- Fish
- Starship
- eza
- Notepad Next
- rofimoji
- Catppuccin Mocha

## Keybinds

### Applications

- Launcher (Wofi): `SUPER + D`
- Terminal (Kitty): `SUPER + Return`
- File Manager (Dolphin): `SUPER + E`
- Scratchpad: `SUPER + SHIFT + S`
- Emoji Picker: `SUPER + .`

### Window Management

- Fullscreen: `SUPER + F`
- Kill Active Window: `SUPER + SHIFT + Q`
- Toggle Floating: `SUPER + V`
- Move Window: `SUPER + Mouse1`
- Resize Window: `SUPER + Mouse2`

### Navigation

- Focus Window: `SUPER + Arrow Keys`
- Workspace Switch: `SUPER + 1-0`
- Move Window to Workspace: `SUPER + SHIFT + 1-0`

### Touchpad Gestures

- 3-finger horizontal swipe: Switch workspace
- 3-finger swipe down: Minimize active window
- 3-finger swipe up: Restore minimized window
- 4-finger swipe down: Open scratchpad

### Screenshots

- Area Screenshot: `Print`
- Full Screenshot: `SHIFT + Print`
- Area Screenshot to Clipboard: `CTRL + Print`

## Features

- Lua-based Hyprland configuration
- Rounded corners and blur
- Catppuccin Mocha theme
- Custom heliotrope window borders
- Waybar integration
- Workspace navigation and touchpad gestures
- Custom wallpaper loader
- Hyprlock + Hypridle integration
- Fish + Starship terminal workflow
- eza with custom styling
- GUI scratchpad for temporary notes and text
- Emoji picker with clipboard integration
- Screenshot and clipboard workflow
- Tablet support

## Installation

Clone the repository:

```bash
git clone git@github.com:ChitranshAherwar/nyx-hyprland.git
```

Copy the required configuration directories into:

```text
~/.config/hypr
~/.config/waybar
~/.config/kitty
~/.config/fish
~/.config/hyprlock
~/.config/hypridle
```

Reload Hyprland:

```bash
hyprctl reload
```

## Notes

Nyx started as a backup of my Hyprland configuration while migrating from i3wm.

It gradually became something more: a living record of my Linux journey, my experiments with shell scripting and Git, and the little pieces of automation and customization that make my desktop feel like mine.

The configuration changes as I do. Some things get polished. Some get removed. Some survive purely because they're cool.

This repository is both a backup and a playground.

If something breaks, it was probably working five minutes ago.
