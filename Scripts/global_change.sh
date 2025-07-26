#! /sbin/bash

# Set wallpaper directory
Wallpapers_Folder=/home/yuki/Sync/Alice/Wallpapers/

# Generate colors from random wallpaper in folder
hellwal -i $Wallpapers_Folder -r --neon-mode

# Import variables from wallpaper
source ~/.cache/hellwal/variables.sh

# Set Wallpapers
swww img $wallpaper --transition-type wipe --transition-duration 1.0

# Reload waybar
pkill waybar && hyprctl dispatch exec waybar

# Update Rofi
cp ~/.cache/hellwal/rofi.rasi ~/.config/rofi/config.rasi

# Pywalfox
cp ~/.cache/hellwal/colors.json ~/.cache/wal/colors.json
pywalfox update
