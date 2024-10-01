mkdir -p ~/.config/hypr ~/.config/alacritty ~/.config/waybar ~/.config/htop
cp ./hypr/* ~/.config/hypr/
cp ./waybar/* ~/.config/waybar/
cp ./alacritty/* ~/.config/alacritty/



sudo pacman -Syu --needed pulseaudio sway waybar sddm base-devel git alacritty python-pywal

if [ -f /usr/bin/yay ]; then
    echo "installing..."
else
    git clone https://aur.archlinux.org/yay
    cd yay/
    makepkg -si
fi

echo "removing yay folder"
rm -rfv yay

yay -S pacseek --needed

mkdir ~/wallpaper -p && mv ./wallpapers/* ~/wallpaper/
cd ~/wallpaper/ && tar -xvf aa.tar
echo "try logging in and out"
