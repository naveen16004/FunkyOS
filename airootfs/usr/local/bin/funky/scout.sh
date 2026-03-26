#!/bin/bash
# 🛰️ FunkyOS: Scanning Host Hardware...

TOTAL_RAM=$(free -g | awk '/^Mem:/{print $2}')

if [ "$TOTAL_RAM" -lt 4 ]; then
    echo "⚠️ Low RAM detected ($TOTAL_RAM GB). Activating Performance Mode."
    # Command to disable Hyprland animations for speed
    hyprctl keyword animations:enabled 0
else
    echo "🚀 High Performance detected ($TOTAL_RAM GB). All systems nominal."
fi
