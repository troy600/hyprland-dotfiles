#!/usr/bin/bash

noneed="--noconfirm --needed"

essentials() {
   system="alacritty systemd networkmanager pulseaudio pulsemixer python vim nano grub efibootmgr gparted gtk4 gtk3 "
   misc="python-pywal16 waybar noto-fonts-extra noto-fonts-cjk ttf-nerd-fonts-symbols ttf-nerd-fonts-symbols-mono ttf-fonts-awesome waypaper htop lzop"
}

Loginmanager() {
   echo "tty (1)"
   echo "sddm (2)"
   echo "what is your prefered login manager?"
   read -p ">> " logins
   case "$logins" in
      2)
         loginman="sddm"
         ;;
      1)
         loginman="tty"
         ;;
   esac
}

########################3

CopyFiles() {
   mkdir -p ~/.local/share/icons ~/.config/sway ~/.config/alacritty ~/.config/waybar ~/.local/share/rofi/themes ~/.config/gtk ~/.config/gtk-2.0 ~/.config/gtk-3.0 ~/.config/gtk-4.0
   cp ./Bibata-Pink-Ice ~/.local/share/icons/
   cp -rvf ./alacritty/* ~/.config/waybar/
   cp -rvf ./waybar/* ~/.config/waybar/
   cp -rvf ./rofi-themes/* ~/.local/share/rofi/themes/
   cp -rvf ./gtk/* ~/.config/gtk
   cp -rvf ./gtk-2.0/* ~/.config/gtk-2.0
   cp -rvf ./gtk-3.0/*~/.config/gtk-3.0
   cp -rvf ./gtk-4.0/* ~/.config/gtk-4.0
}

########################


#Wmhyprland set variable
Pwm() {
   read -p "What is your prefered wm?" wms
   case $wms in
      1)
         wm="sway"
         ;;
      2)
         wm="hyprland"
         ;;
   esac
}

#install yet another yogurt
yayInstall() {
   if [[ ! -f /usr/bin/yay ]]; then
      bash ./scripts/yay.sh
   fi
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
         browser=" firefox"
         ;;
      2)
         browser=" microsoft-edge-stable-bin"
         ;;
      3)
         browser=" chromium"
         ;;
      4)
         echo "what an idiot"
         browser="firefox"
         ;;
   esac
   unset sel
}

main() {
   #yay installr
   yayInstall

   #Pick wm
   Pwm

   Loginmanager

   if [[ $loginman === "sddm" ]]; then
      sudo pacman -S sddm
   fi

   #browser
   browser

   #call essentials
   essentials
   yay -Syu $noneed $system $misc $wm $browser
   CopyFiles
}

#call d main func
main
