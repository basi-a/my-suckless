#!/bin/bash
current=$(ddcutil getvcp 10 | tr -s ',' ' ' | awk '{print $9}')
ddcutil setvcp 10 $(( $current + 5 ))
notify-send "Light up. Lignt: $current" -u normal
