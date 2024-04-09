#!/bin/bash
current=$(ddcutil getvcp 10 | tr -s ',' ' ' | awk '{print $9}')
ddcutil setvcp 10 $(( $current - 5 ))
notify-send "Light down. Lignt: $current" -u normal
