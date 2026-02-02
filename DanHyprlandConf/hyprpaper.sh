#!/bin/bash

WALLPAPER_DIRECTORY=$HOME/.config/hypr/Pictures/Wallpapers/LOTM

WALLPAPER=$(find "$WALLPAPER_DIRECTORY" -type f | shuf -n 1)

hyprctl hyprpaper preload "$WALLPAPER"
hyprctl hyprpaper wallpaper "DP-1,$WALLPAPER"

sleep 0.3

hyprctl hyprpaper unload unused

