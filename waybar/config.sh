cd "$(dirname "$0")"

mkdir ~/.config/waybar
cp *.jsonc *.css ~/.config/waybar
sed -i "s/@@TEMPERATUREZONE@@/$1/g" ~/.config/waybar/config.jsonc
