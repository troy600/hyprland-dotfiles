#!/bin/bash

#By Troyyy

wallpaper_dir="$(ls ~/wallpaper)"
wallpaper="$HOME/.cache/currentwallpaper.png"

# Show the menu using Rofi

SelectWallpaper() {
    chosen=$(echo -e "$wallpaper_dir" | rofi -dmenu -i -p "Choose a wallpaper:3" -l 10 )
}

RandomWallpaper() {
    chosen=$(echo "$wallpaper_dir" | shuf -n 1 )
}


main() {
    notify-send "setting the wallpaper"
    if [[ -z "$chosen" ]]; then
	    notify-send "you didn't pick any wallpaper"
	    return 1
#	    wal -i "$HOME/wallpaper/$chosen" --saturate 1.0 -n
	else
	    pkill waybar
	    waybar -c ~/.config/waybar/config-hyprland.jsonc &
	    cp "$HOME/wallpaper/$chosen" "$wallpaper"
	    wal -i "$wallpaper" --saturate 1.0 -n
		waypaper --wallpaper "$wallpaper" &

fi
}

if [[ ! -f "$wallpaper" ]]; then
	RandomWallpaper
	main
fi

if [[ $1 == "ran" ]]; then
	RandomWallpaper
    path="~/wallpaper/$chosen"

	main
else
	SelectWallpaper
    path="~/wallpaper/$chosen"

	main
fi

