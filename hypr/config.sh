cd "$(dirname "$0")"
shopt -s extglob

dialog \
    --title "Hyprland" \
    --clear \
    --yesno "Do you want to enable animation and blur in Hyprland?" 0 0
animation=$?

mkdir ~/.config/hypr
cp !(*@(.sh|.patch)) ~/.config/hypr

if [ $animation == 1 ]; then
    patch ~/.config/hypr/hyprland.conf hyprland_laptop.patch
fi
