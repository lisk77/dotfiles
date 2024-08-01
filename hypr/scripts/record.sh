#!/bin/bash

now=$(date +%Y%m%d%H%M%S)
wf-recorder -a -f "$now.mp4"
mv ./$now.mp4 ~/Videos/$now.mp4
