#!/usr/bin/env bash

if [ -f $HOME/.config/waybar/waybar-disabled ]; then
    rm $HOME/.config/waybar/waybar-disabled
else
    touch $HOME/.config/waybar/waybar-disabled
fi
killall -SIGUSR1 waybar
#$HOME/.config/waybar/launch.sh &
