#!/usr/bin/bash

sudo pacman -S zenity

browser=""
wms=

echo "I'm curious. what wm do you want to install?"
echo "(1) hyprland"
echo "(2) swayy"

read wms

case $wms in
    1)
        wms="hyprland"
        ;;
    2)
        wms="sway"
        ;;
esac

echo "what's your favourite browser you want to install?"
echo "(1) Firefox"
echo "(2) Chromium"

read $browser


case $browser in
    1)
        browser=firefox
        ;;
    2)
        browser=chromium
        ;;
    3)
        echo "idiot"
        browser=firefox
esac



if [ -f "/usr/bin/yay" ]; then
    echo "installing..."
else
    git clone https://aur.archlinux.org/yay
    cd yay/
    makepkg -si
fi

echo "removing yay folder"
rm -rfv yay

yay -Syu --needed otf-font-awesome awesome-terminal-fonts noto-fonts noto-fonts-cjk pulseaudio waypaper $wms sddm base-devel git alacritty rofi-wayland pacseek python-pywal16 $browser

sudo cp ./rofi-themes/* /usr/share/rofi/themes/

mkdir ~/wallpaper -p && mv ./wallpapers/* ~/wallpaper/
#cd ~/wallpaper/ && bash install.sh
wal -i ~/wallpaper/Aiabstract.png --saturate 1
ln -s ~/.cache/wal/colors-waybar.css ~/.config/waybar/colors.css
echo "try logging in and out"


mkdir -p ~/.config/hypr ~/.config/alacritty ~/.config/waybar ~/.config/htop ~/.config/sway
cp -f ./hypr/* ~/.config/hypr/
cp -f ./waybar/* ~/.config/waybar/
cp -f ./alacritty/* ~/.config/alacritty/
cp -f ./htop/* ~/.config/htop/
cp -f ./sway/* ~/.config/sway/
sudo ./rofi-themes/* /usr/share/rofi/themes/

cd ~/wallpaper/ && bash install.sh
