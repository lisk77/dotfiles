#!/bin/bash

# Check if cliphist has any entries
if [[ -z $(cliphist list) ]]; then
    notify-send "Clipboard Empty" "No clipboard history available."
    exit 1
fi


# Get clipboard history and show it in Rofi
chosen=$(( echo "🗑 Clear Clipboard";cliphist list) | rofi -dmenu -i -p "Clipboard History" -theme "~/.config/rofi/clipboard.rasi")


# Get MIME type of the selected clipboard item
mime_type=$(cliphist decode <<< "$chosen" | file --mime-type -b -)



# If the user selects something, copy it
#if [[ -n "$chosen" ]]; then
#    cliphist decode <<< "$chosen" | wl-copy
#    notify-send "Copied to Clipboard" "$chosen"
#fi
#clear the clipboard if the option is selected
if [ "$chosen" = "🗑 Clear Clipboard" ]; then
    cliphist wipe
    notify-send "Clipboard cleared!"
    exit 0
# Check if it's an image
elif [[ "$mime_type" == image/* ]]; then
    # If it's an image, copy it as an image
    if [[ -n "$chosen" ]]; then
      cliphist decode <<< "$chosen" | wl-copy --type image/png
      notify-send "Image Copied" "Clipboard entry is an image."
    fi
else    # Otherwise, copy as text
    if [[ -n "$chosen" ]]; then
      cliphist decode <<< "$chosen" | wl-copy
      notify-send "Text Copied" "$chosen"
    fi
fi
