shopt -s extglob
cp !(*.sh) ~/.config/waybar
sed -i "s/@@TEMPERATUREZONE@@/0/g" ~/.config/waybar/config.jsonc
pkill waybar
sleep 0.5
waybar &
