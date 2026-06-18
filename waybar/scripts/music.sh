#!/bin/bash

frames=("◐" "◓" "◑" "◒")
cache="/tmp/waybar-music-title"

status=$(playerctl status 2>/dev/null)

# Update cache only while playing
if [[ "$status" == "Playing" ]]; then
    title=$(playerctl metadata title 2>/dev/null)


    # Remove YouTube branding suffixes
    title=$(echo "$title" | sed -E 's/[[:space:]]*[\|\-][[:space:]]*YouTube( Music)?$//')

    # Only cache real titles
    if [[ -n "$title" &&
          "$title" != "YouTube Music" &&
          "$title" != "YouTube" &&
          "$title" != "Brave" ]]; then
        echo "$title" > "$cache"
    fi
fi

title=$(cat "$cache" 2>/dev/null)

case "$status" in
    Playing)
        idx=$(( $(date +%s) % ${#frames[@]} ))
        echo "${frames[$idx]} $title"
        ;;
    Paused)
        echo "⏸ $title"
        ;;
    *)
        echo "󰝛"
        ;;
esac