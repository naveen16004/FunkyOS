# 🌀 FunkyOS (v1.0)
> **The Hardware-Agnostic "Pocket" Operating System.**
> Created with 💜 by Naveen

FunkyOS is a custom, Arch-based live environment designed to run from a USB drive on any x86_64 hardware. It features a high-performance **Hyprland** tiled window manager, a **Neobrutalist** UI aesthetic, and an integrated **AI Voice Bridge** for hands-free workflow.

---

## ✨ Key Features
* **Persistent "Vault":** Auto-mounts a secondary `ext4` partition labeled `FUNKY_VAULT` to `/home/naveen/work`.
* **AI Voice Bridge:** Uses **Whisper.cpp** and **Ollama** to execute system commands via voice.
* **Rice & Style:** Custom Hyprland environment with Quickshell and a unique Neobrutalist theme.
* **Developer Ready:** Pre-configured with React, TypeScript, and Tailwind CSS environments for full-stack projects.
* **Hardware Scout:** Intelligent boot scripts that detect host GPU (NVIDIA/AMD/Intel) and optimize drivers on the fly.

---

## 🏗️ System Architecture



The OS is built on a modular "Sense-Think-Act" loop:
1.  **The Ears (Whisper):** Captures 3-second audio bursts via FFmpeg/PipeWire.
2.  **The Heart (bridge.py):** Transcribes audio to text in real-time.
3.  **The Brain (actions.py):** Maps text to specific actions (e.g., launching "Movie Vault" or "Secure Photo Vault").

---

## 🛠️ Project Structure
```text
FunkyOS/
├── airootfs/
│   ├── bridge.py                  # The Central Nervous System
│   ├── usr/local/bin/funky/       # Custom FunkyOS Binaries
│   │   ├── actions.py             # The Command Logic (Brain)
│   │   └── mount-vault.sh         # Persistence Scout Script
│   └── etc/motd                   # Neobrutalist Welcome Screen
└── build_iso.sh                   # The "Bake" Script for .iso generation
