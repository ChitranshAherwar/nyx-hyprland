# Nyx Hyprland

My personal Hyprland setup for EndeavourOS.

A keyboard-driven desktop focused on programming, terminal workflows, learning Linux, and minimal distractions.

## Screenshot

![Desktop](screenshots/desktop.png)

## Components

* Hyprland
* Waybar
* Kitty
* Wofi
* Dolphin
* Hyprlock
* Hypridle
* Fish
* Starship
* Catppuccin Mocha

## Keybinds

### Applications

* Launcher (Wofi): `SUPER + D`
* Terminal (Kitty): `SUPER + Return`
* File Manager (Dolphin): `SUPER + E`

### Window Management

* Fullscreen: `SUPER + F`
* Kill Active Window: `SUPER + SHIFT + Q`
* Toggle Floating: `SUPER + V`
* Move Window: `SUPER + Mouse1`
* Resize Window: `SUPER + Mouse2`

### Navigation

* Focus Window: `SUPER + Arrow Keys`
* Workspace Switch: `SUPER + 1-0`
* Move Window to Workspace: `SUPER + SHIFT + 1-0`

### Screenshots

* Area Screenshot: `Print`
* Full Screenshot: `SHIFT + Print`
* Area Screenshot to Clipboard: `CTRL + Print`

## Features

* Rounded corners and blur
* Catppuccin Mocha theme
* Waybar integration
* Natural touchpad scrolling
* Workspace navigation
* Custom wallpaper loader
* Hyprlock + Hypridle integration
* Fish + Starship terminal workflow

## Installation

Clone the repository:

```bash
git clone git@github.com:ChitranshAherwar/nyx-hyprland.git
```

Copy the required files into:

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

This repository serves as both a backup and a record of my migration from i3wm to Hyprland.

It evolves as I learn Linux, shell scripting, Git, and desktop customization.

If something breaks, it was probably working five minutes ago.
