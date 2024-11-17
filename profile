#!/bin/bash
# shellcheck disable=SC1090

if [ $(tty) == /dev/tty1 ]; then
    exec Hyprland
else
    echo "hyprland is running \n"
fi

