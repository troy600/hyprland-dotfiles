home="$HOME/Pictures/screenshots/"
namef="screenshot_$(date +%d%m%Y_%H%M%S).png"


grim -g "$(slurp)" "$home$namef"
swappy -f "$home$namef"
