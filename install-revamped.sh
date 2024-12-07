#!/usr/bin/bash

noneed="--noconfirm --needed"

essentials() {
   system="systemd networkmanager pulseaudio pulsemixer python vim nano grub efibootmgr gparted gtk4 gtk3 "
   misc="python-pywal16 waybar noto-fonts-extra noto-fonts-cjk ttf-nerd-fonts-symbols ttf-nerd-fonts-symbols-mono otf-fonts-awesome "
}

#Wmhyprland set variable
Pwm() {
   read -p "What is your prefered wm?" wms
   case $wms in
      1)
         wm=sway
         ;;
      2)
         wm=hyprland
         ;;
   esac
}

#install yet another yogurt
yayInstall() {
   bash ./scripts/yay.sh
}

preffered_kernel() {
   if [[ "$1" == "linux" ]]; then
       echo "vanila linux user nice"
       kernel=linux
    elif [[ "$1" == "linux-zen" ]]; then
       kernel=linuz-zen
   fi
}

#sway
WmSway() {
   wm=sway
}

rofiwayland () {
   packages=rofi-wayland
}

pacman_install() {
   echo $@
}

#browser
browser() {
   echo "Firefox (1)"
   echo "Edge (2)"
   echo "Chromium (3)"
   read -p "What brwoser you want to use? >> " sel
   case "$sel" in
      1)
         browser="firefox"
         ;;
      2)
         browser="edge"
         ;;
      3)
         browser="chromium"
         ;;
      4)
         echo "what an idiot"
         ;;
   esac
   unset sel
}

main() {
   #Pick wm
   Pwm

   #call essentials
   essentials
   sudo pacman -Syu $noneed $system $misc $wm
}

#call d main func
main
