#!/bin/bash
# 🕵️ FunkyOS: Identity Masking...

INTERFACE=$(ip link | awk -F: '$0 !~ "lo|vir|wl.*bc" {print $2;exit}' | tr -d ' ')

echo "🎭 Spoofing MAC for $INTERFACE..."
ip link set dev $INTERFACE down
macchanger -r $INTERFACE
ip link set dev $INTERFACE up
echo "✅ New Identity Assigned."
