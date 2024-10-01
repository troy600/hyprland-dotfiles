home="$HOME/Pictures/screenshots/"
namef="screenshot_$(date +%d%m%Y_%H%M%S).png"

grim -c -g "$(slurp & sleep 4)" "$home$namef"
swappy -f "$home$namef" 
