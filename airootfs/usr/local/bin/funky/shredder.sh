#!/bin/bash
# 🧹 FunkyOS: Anti-Forensics Wipe...

echo "🧹 Shredding session logs and temporary data..."

# Wipe system logs and temp files
find /var/log -type f -exec shred -u {} \;
find /tmp -type f -exec shred -u {} \;

# Clear bash history for the current session
history -c
rm -f ~/.bash_history

echo "✅ Trace Cleared. System is clean."
