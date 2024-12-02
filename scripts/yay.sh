#!/usr/bin/sh

main() {
    sudo pacman -Syu base-devel --noconfirm --needed
    if (( $? != 0 )); then
        echo "pacman installation of base-devel is canceled :("
        exit 1
    fi
    git clone https://aur.archlinux.org/yay
    cd yay
    makepkg -si
    cd ..
    rm -rvf yay
}

main
