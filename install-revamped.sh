#!/usr/bin/bash

essentials() {
   system="systemd networkmanager pulseaudio pulsemixer python vim nano grub "
   misc="python-pywal16 waybar noto-fonts-extra noto-fonts-cjk ttf-nerd-fonts-symbols ttf-nerd-fonts-symbols-mono otf-fonts-awesome"
}

WmHyprland() {
    wm=hyprland
}

yayInstall() {
   yay
}

preffered_kernel() {
   if [[ "$1" == "linux" ]]; then
       echo "vanila linux user nice"
       kernel=linux
    elif [[ "$1" == "linux-zen" ]]; then
       kernel=linuz-zen
   fi
}

WmSway() {
   wm=sway
}

rofiwayland () {
   hello
}

pacman_install() {
   echo $@
}


main() {
   WmHyprland
}


preffered_kernel "linux-zen"
essentials
pacman_install $kernel  $misc
