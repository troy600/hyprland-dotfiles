mkdir -p ~/.config/sway ~/.config/alacritty && ~/.config/waybar
cp ./sway/* ~/.config/sway/
cp ./waybar/* ~/.config/waybar/
cp ./alacritty/* ~/.config/alacritty/

sudo pacman -Syu --needed pulseaudio sway waybar sddm base-devel git alacritty python-pywal
git clone https://aur.archlinux.org/yay
cd yay/
makepkg -si

echo "removing yay folder"
rm -r yay

yay -S pacseek --needed

mkdir ~/wallpaper -p && mv ./wallpapers/* ~/wallpaper/
echo "try logging in and out"
