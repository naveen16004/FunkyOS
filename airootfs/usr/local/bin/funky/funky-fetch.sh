#!/bin/bash
# 🖥️ Funky-Fetch: Neobrutalist System Status

echo -e " \e[1;107;30m FUNKY OS \e[0m"
echo -e " ┌──────────────────────────┐"
echo -e " │ \e[1;34mHOST:\e[0m $(hostname)      │"
echo -e " │ \e[1;33mMODE:\e[0m GHOST (RAM)     │"
echo -e " │ \e[1;32mVAULT:\e[0m ACTIVE         │"
echo -e " │ \e[1;31mTEMP:\e[0m $(vcgencmd measure_temp 2>/dev/null || echo 'N/A')            │"
echo -e " └──────────────────────────┘"
