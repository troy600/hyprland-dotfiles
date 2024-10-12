this=1


if [[ $(tty) == "/dev/tty1" ]]; then
    echo "tty1"
    echo "how do you want to start your day :)?"
    echo "(1) tty mode "
    echo "(2) hyprland mode"
    echo "(3) sway mode"
    read this

    case $this in
        1)
            echo "entering tty"
            ;;
        2)
            echo "entering hyprland"
            bash ~/.config/hypr/hyprland.sh
	    ;;
	3)
	    echo "entering swayyy"
	    bash ~/.config/sway/sway.sh
        ;;
    esac
else
    echo "not on tty 1"
fi
