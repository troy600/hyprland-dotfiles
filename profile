#!/bin/bash
# shellcheck disable=SC1090

if [ $(tty) == /dev/tty1 ]; then
    exec Hyprland
else
    echo "hyp[rland is running \n"
fi

