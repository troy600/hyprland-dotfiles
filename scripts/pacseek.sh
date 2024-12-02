#!/usr/bin/sh

main() {
    yay -S pacseek
    if (( $? != 0 )); then
        echo "cancelled >:("
        exit 1
    fi
    echo "Success"

}

main
