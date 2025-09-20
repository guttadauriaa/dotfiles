#!/usr/bin/env bash

# Prevent duplicate launchers

exec 200>/tmp/waybar-launch.lock
flock -n 200 || exit 0

# Quit all running waybar instances
killall waybar #|| true
pkill waybar #|| true
sleep 0.5

config_file="config.jsonc"
style_file="style.css"

if [ ! -f $HOME/.config/ml4w/settings/waybar-disabled ]; then
    HYPRLAND_SIGNATURE=$(hyprctl instances -j | jq -r '.[0].instance')
    #HYPRLAND_INSTANCE_SIGNATURE="$HYPRLAND_SIGNATURE" waybar -c ~/.config/waybar/themes${arrThemes[0]}/$config_file -s ~/.config/waybar/themes${arrThemes[1]}/$style_file &
    HYPRLAND_INSTANCE_SIGNATURE="$HYPRLAND_SIGNATURE" waybar -c ~/.config/waybar/$config_file -s ~/.config/waybar/$style_file &
else
    echo " Waybar disabled"
fi

# Explicitly release the lock
flock -u 200
exec 200>&-
