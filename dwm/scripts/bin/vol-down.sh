#!/bin/bash
vol=$(amixer get Master | tail -1 | awk -F" " '{print $5}' | sed 's/[^0-9]*//g')
amixer sset Master 5%- unmute
notify-send "Vol down. Vol: $vol%" -u normal
