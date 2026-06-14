#!/bin/bash

profile=$(powerprofilesctl get)

case "$profile" in
    power-saver)
        icon="󰾆"
        ;;
    balanced)
        icon="󰾅"
        ;;
    performance)
        icon="󰓅"
        ;;
esac

echo "$icon"