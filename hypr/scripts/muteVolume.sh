#!/bin/bash


pamixer -t
volume=$(pamixer --get-volume-human)
dunstify -i audio-volume-muted --replace 777 -t 500 "Volume: $volume"
