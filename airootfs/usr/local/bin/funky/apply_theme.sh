#!/bin/bash
# 🎨 FunkyOS: Visual Identity Engine

echo "🎨 Applying Neobrutalist Theme..."

# 1. Set the background to solid black (OLED/Stealth optimized)
# If using swaybg or hyprpaper:
hyprctl keyword decoration:screen_shader "" 
swaybg -c "#000000" &

# 2. Force the signature border colors on all windows
hyprctl keyword general:col.active_border "rgba(ffff00ff)" # Yellow
hyprctl keyword general:col.inactive_border "rgba(000000ff)" # Black
hyprctl keyword general:border_size 5

echo "✅ Visual Identity Locked."
