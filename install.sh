mkdir -p ~/.config/hypr ~/.config/alacritty ~/.config/waybar ~/.config/htop
cp ./hypr/* ~/.config/hypr/
cp ./waybar/* ~/.config/waybar/
cp ./alacritty/* ~/.config/alacritty/
cp ./htop/* ~/.config/htop


if [ -f /usr/bin/yay ]; then
    echo "installing..."
else
    git clone https://aur.archlinux.org/yay
    cd yay/
    makepkg -si
fi

echo "removing yay folder"
rm -rfv yay

yay -Syu --needed pulseaudio sway hyprland sddm base-devel git alacritty python-pywal rofi-wayland pacseek NetworkManager

mkdir ~/wallpaper -p && mv ./wallpapers/* ~/wallpaper/
cd ~/wallpaper/ && tar -xvf aa.tar
wal -i ~/wallpaper/Aiabstract.png --saturate 1
ln -s ~/.cache/wal/colors-waybar.css ~/.config/waybar/colors.css
echo "try logging in and out"
