#!/bin/bash
# FunkyOS Build Script

echo -e "\033[1;34m[*] Starting FunkyOS Build Sequence...\033[0m"

# Cleanup previous attempts
rm -rf ./build ./out
mkdir -p ./out

# Run the build
mkarchiso -v -w ./build -o ./out .

if [ $? -eq 0 ]; then
    echo "[✓] Build Complete!"
else
    echo "[X] Build Failed."
fi
