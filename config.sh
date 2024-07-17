set +e

./waybar/config.sh
./hypr/config.sh
./kitty/config.sh
./tofi.sh
./dunst.sh

cp .bashrc ~
