set +e

./waybar/config.sh
./hypr/config.sh
./ghostty.sh
./tofi.sh
./dunst.sh
./fastfetch/config.sh

cp .bashrc ~
