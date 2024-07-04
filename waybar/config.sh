cd "$(dirname "$0")"
shopt -s extglob

# generate list of thermal zone
tz=()
i=0
for t in "/sys/class/thermal/thermal_zone"*; do
    tz+=("$i" $(cat $t/type))
    i=$(( $i + 1 ))
done

thermal_zone=$(dialog \
    --title "Select thermal zone for waybar" \
    --clear \
    --menu "Please select:" 0 0 0 \
    "${tz[@]}" 3>&1 1>&2 2>&3 3>&-
)

mkdir ~/.config/waybar
cp !(*.sh) ~/.config/waybar
sed -i "s/@@TEMPERATUREZONE@@/$thermal_zone/g" ~/.config/waybar/config.jsonc
