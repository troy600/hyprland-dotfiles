cp ./sway ~/.config/sway
cp ./waybar ~/.config/waybar

sudo pacman -Syu --needed pulseaudio sway waybar sddm base-devel git
git clone https://aur.archlinux.org/yay
