#!/bin/bash
# 🛡️ FunkyOS: Security Status Dashboard

echo -e "\n\e[1;107;30m GHOST SECURITY CHECK \e[0m"

# 1. Check Firewall
if systemctl is-active --quiet ufw; then
    echo -e " [\e[32mPASS\e[0m] Firewall: ACTIVE (Paranoid Mode)"
else
    echo -e " [\e[31mFAIL\e[0m] Firewall: DISABLED"
fi

# 2. Check DNS
if grep -q "DNSOverHTTPS=yes" /etc/systemd/resolved.conf; then
    echo -e " [\e[32mPASS\e[0m] Ghost Net: ENCRYPTED (DoH)"
else
    echo -e " [\e[31mFAIL\e[0m] Ghost Net: LEAKING (Standard DNS)"
fi

# 3. Check Identity
CURR_MAC=$(ip link show | grep ether | awk '{print $2}')
echo -e " [\e[34mINFO\e[0m] Identity: $CURR_MAC"
echo -e " └────────────────────────────────────┘\n"
