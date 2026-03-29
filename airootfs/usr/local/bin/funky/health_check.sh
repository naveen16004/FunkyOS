#!/bin/bash
# 🩺 FunkyOS: Security Health Check

echo "🩺 Running Pre-Flight Security Check..."

# 1. Check if MAC is still spoofed (not the default Acer/Laptop vendor)
# (Simple check: if it contains '00:00:00', it's likely a leak or reset)
MAC=$(ip link show | grep ether | awk '{print $2}')

# 2. Check if Firewall is active
UFW_STATUS=$(systemctl is-active ufw)

if [ "$UFW_STATUS" == "active" ]; then
    echo "✅ Shield Up. Identity: $MAC"
else
    echo "⚠️ WARNING: FIREWALL DOWN. Triggering Stealth Mode..."
    python3 /usr/local/bin/funky/bridge.py stealth
fi
