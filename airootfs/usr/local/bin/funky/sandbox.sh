#!/bin/bash
# 🫧 FunkyOS: App Sandboxing Logic

APP=$1

if [ -z "$APP" ]; then
    echo "Usage: funky sandbox [app_name]"
    exit 1
fi

echo "🫧 Launching $APP in a secure bubble..."

# Firejail restricts access to home and network
# --private: Creates a temporary desktop/home in RAM
# --net=none: Optional (add if you want zero internet for that app)
firejail --private --dns=1.1.1.1 "$APP"
