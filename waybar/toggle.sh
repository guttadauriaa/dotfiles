#!/usr/bin/env bash
if [ !-d $HOME/.local/share/waybar ]; then
    mkdir $HOME/.local/share/waybar
fi

if [ -f $HOME/.local/share/waybar/waybar-disabled ]; then
    rm $HOME/.local/share/waybar/waybar-disabled
else
    touch $HOME/.local/share/waybar/waybar-disabled
fi
killall -SIGUSR1 waybar
#$HOME/.config/waybar/launch.sh &
