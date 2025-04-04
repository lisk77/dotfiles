#!/bin/bash

brightnessctl -q s 10%-

current_brightness=$(brightnessctl g)
max_brightness=$(brightnessctl m)
brightness=$(echo "scale=1; $current_brightness/$max_brightness*100" | bc)
brightness=$(echo $brightness | awk '{printf("%g", $0)}')

dunstify --replace=777 -t 500 "Brightness: $brightness%" -h int:value:$brightness

