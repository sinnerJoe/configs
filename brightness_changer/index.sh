#!/bin/bash
br=$(light -G)
# echo $br
newVal=$(echo 'Math.min(('"$br"' / 100 * 1.4 + 0.55).toFixed(2), 1)'| node -p)
xrandr --output HDMI1 --brightness "$newVal"
