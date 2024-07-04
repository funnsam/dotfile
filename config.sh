set +e

tz=()
i=0
for t in "/sys/class/thermal/thermal_zone"*; do
    tz+=("$i" $(cat $t/type))
    i=$(( $i + 1 ))
done

echo "${tz[@]}"

./waybar/config.sh $(dialog \
    --title "Select thermal zone for waybar" \
    --clear \
    --menu "Please select:" 0 0 0 \
    "${tz[@]}" 3>&1 1>&2 2>&3 3>&-
)

dialog \
    --title "Hyprland" \
    --clear \
    --yesno "Do you want to enable animation and blur in Hyprland?" 0 0
./hypr/config.sh $?

cp .bashrc ~
./kitty/config.sh
