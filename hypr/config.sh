cd "$(dirname "$0")"
shopt -s extglob

dialog \
    --title "Hyprland" \
    --clear \
    --yesno "Do you want to enable animation and blur in Hyprland?" 0 0
animation=$?

mkdir -p ~/.config/hypr
cp !(*@(.sh|.patch)) ~/.config/hypr

if [ $animation == 1 ]; then
    sed -i '/\$fancy = true/c\$fancy = false' ~/.config/hypr/hyprland.conf
fi
