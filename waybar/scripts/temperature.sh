#!/bin/bash

hwmon=$(grep -l k10temp /sys/class/hwmon/hwmon*/name | head -n1)
tempfile="$(dirname "$hwmon")/temp1_input"

temp=$(cat "$tempfile")
temp=$((temp / 1000))

if [ "$temp" -ge 75 ]; then
    class="critical"
elif [ "$temp" -ge 60 ]; then
    class="warning"
else
    class="normal"
fi

echo "{\"text\":\" ${temp}°C\",\"class\":\"$class\"}"