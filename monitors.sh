#!/bin/bash

output=$(xrandr)

if [[ $output == *"HDMI-1 connected"* ]]; then
    echo "HDMI-1 is connected"
    xrandr --output HDMI-1 --auto --primary
    xrandr --output eDP-1 --off
else
    # If it's not, execute this command
    echo "HDMI-1 is not connected"
    xrandr --output HDMI-1 --off
    xrandr --output eDP-1 --auto --primary
fi
