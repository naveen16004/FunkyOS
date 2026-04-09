#!/bin/bash
# Stealth Mode Toggle
ufw enable
systemctl start dnscrypt-proxy
echo "Stealth Mode Active."
