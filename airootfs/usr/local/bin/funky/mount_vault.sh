#!/bin/bash
# 🔓 FunkyOS Vault Mounter

# Search for the partition by Label
VAULT_PART=$(blkid -L FUNKY_DATA)

if [ -n "$VAULT_PART" ]; then
    mkdir -p /home/funky/Vault
    mount -o rw,noatime "$VAULT_PART" /home/funky/Vault
    chown -R 1000:1000 /home/funky/Vault
    echo "Vault Unlocked."
else
    echo "No Vault Found. Ghost Mode Only."
fi
