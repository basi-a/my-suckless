#!/bin/bash
amixer sset Master 5%- unmute
vol=$(amixer get Master | tail -1 | awk -F" " '{print $5}' | sed 's/[^0-9]*//g')
notify-send "Vol down. Vol: $vol%" -u normal
