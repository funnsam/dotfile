cd "$(dirname "$0")"

mkdir ~/.config/hypr
cp *.conf ~/.config/hypr

if [ $1 == 1 ]; then
    patch ~/.config/hypr/hyprland.conf hyprland_laptop.patch
fi
