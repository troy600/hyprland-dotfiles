mkdir -p ~/.config/sway ~/.config/alacritty ~/.config/waybar
cp ./sway/* ~/.config/sway/
cp ./waybar/* ~/.config/waybar/
cp ./alacritty/* ~/.config/alacritty/

sudo pacman -Syu --needed pulseaudio sway waybar sddm base-devel git alacritty python-pywal

if [ -z /usr/bin/yay ]; then
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
