#!/bin/bash

pamixer -d 5

isMuted=$(pamixer --get-mute)
volume=$(pamixer --get-volume-human)

if [ $isMuted = true ]; then
  dunstify -i audio-volume-muted --replace=777 -t 500 "Volume: Muted" "$(pamixer --get-volume)%"
else
  dunstify -i audio-volume-low --replace=777 -t 500 "Volume: $volume" -h int:value:$volume
fi
