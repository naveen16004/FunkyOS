#!/bin/bash
# 🌗 FunkyOS Theme Engine

MODE=$1

if [ "$MODE" == "stealth" ]; then
    # Dark Red / Black
    hyprctl keyword general:col.active_border "rgba(ff0000ff)"
    hyprctl keyword decoration:col.shadow "rgba(000000ff)"
    echo "Stealth Theme Active."
else
    # Signature Yellow / Black
    hyprctl keyword general:col.active_border "rgba(ffff00ff)"
    hyprctl keyword decoration:col.shadow "rgba(000000ee)"
    echo "Funky Standard Theme Active."
fi
