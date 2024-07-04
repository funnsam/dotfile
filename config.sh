set +e

./waybar/config.sh
./hypr/config.sh
./kitty/config.sh

cp .bashrc ~
mkdir ~/.config/tofi
cp tofi ~/.config/tofi/config
