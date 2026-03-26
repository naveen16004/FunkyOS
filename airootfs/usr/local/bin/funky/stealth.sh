#!/bin/bash
# 🌑 FunkyOS: Going Dark
nmcli networking off
rfkill block all
echo "Stealth Mode: Active. Networking disabled."
