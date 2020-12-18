#!/bin/bash
swaylock="$HOME/.config/sway/scripts/lock.sh"
screenon="swaymsg on"
swayidle \
	lock "$swaylock" \
	unlock "pkill -9 swaylock" \
    resume "$screenon; lqsd -r" \
