#!/bin/bash
amixer sset Master toggle
vol=$(amixer get Master | tail -1 | awk -F" " '{print $5}' | sed 's/[^0-9]*//g')
mute=$(amixer get Master | tail -1 | awk '{print $6}' | sed 's/[^a-z]*//g')
if [ "$mute" == "off" ];then
notify-send "Vol set to mute" -u normal
else
notify-send "Vol set to umute. Vol: $vol%" -u normal
fi
