set +e

./waybar/config.sh
./hypr/config.sh
./kitty/config.sh
./tofi.sh
./dunst.sh
./fastfetch/config.sh

cp .bashrc ~
