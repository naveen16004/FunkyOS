#!/bin/bash
# Randomize hostname on boot
NEW_HOST="ghost-$(openssl rand -hex 4)"
hostnamectl set-hostname $NEW_HOST
echo "Hostname changed to $NEW_HOST"
