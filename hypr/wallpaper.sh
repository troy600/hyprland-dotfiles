#!/bin/bash

#By Ali

wallpaper_dir="$(ls ~/wallpaper)"

# Show the menu using Rofi
chosen=$(echo -e "$wallpaper_dir" | rofi -dmenu -i -p "Choose a wallpaper:3")
path="~/wallpaper/$chosen"
wallpaper_cache="$HOME/.cache/currentwallpaper.png"

if [[ -z "$chosen" ]]; then
	notify-send "you didn't pick any wallpaper"
	return 1
else
	notify-send "setting the wallpaper" &
	waypaper --wallpaper $path  &
	wal -i "$HOME/wallpaper/$chosen" --saturate 1.0 -n 
	pkill waybar
	waybar -c ~/.config/waybar/config-hyprland.jsonc &
	cp -f "$HOME/wallpaper/$chosen" $wallpaper_cache
	notify-send "success!!!!"
	return 0
fi


