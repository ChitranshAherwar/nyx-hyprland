#!/bin/bash

STATE="/tmp/hypr-opacity"

if [ -f "$STATE" ]; then
    hyprctl eval 'hl.config({
        decoration = {
            active_opacity = 1.0,
            inactive_opacity = 1.0
        }
    })'
    rm "$STATE"
else
    hyprctl eval 'hl.config({
        decoration = {
            active_opacity = 1.0,
            inactive_opacity = 1.0
        }
    })'
    touch "$STATE"
fi
