#!/bin/bash

STATE="/tmp/hypr-transparent"

if [ "$1" = "toggle" ]; then
    if [ -f "$STATE" ]; then
        hyprctl keyword decoration:active_opacity 0.95
        hyprctl keyword decoration:inactive_opacity 0.85
        rm "$STATE"
    else
        hyprctl keyword decoration:active_opacity 1.0
        hyprctl keyword decoration:inactive_opacity 1.0
        touch "$STATE"
    fi
fi

if [ -f "$STATE" ]; then
    echo '{"text":"󰈈","tooltip":"Solid Mode"}'
else
    echo '{"text":"󰇚","tooltip":"Glass Mode"}'
fi
