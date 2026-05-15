#🛸 FunkyOS: Ghost Edition


#🔭 Vision & Architecture
FunkyOS is designed as a "Live-First" environment. It solves the common "Switch Root" and "Label Mismatch" issues found in custom ISOs, creating a seamless boot experience across Intel and AMD architectures.

#🏎️ Performance Engine
CachyOS Core: Integrated CachyOS repositories for v3/v4 x86_64 optimizations.

Universal Driver Stack: Pre-loaded firmware for Broadcom, Realtek, and major GPU vendors.

Zen-Kernel Speed: Optimized task scheduling for low-latency desktop use.

#👻 Ghost Features
Hardened Firefox: Pre-baked user.js for zero-telemetry browsing.

DNSCrypt: Automatic DNS encryption out of the box.

Clean Sidebar: Fully portable configurations that leave no trace on host machines.

#🛠️ Build Information
1. Trusted Keyring Setup
Before building, you must authorize the repository keys on your host machine to avoid signature errors:

Bash
sudo pacman-key --recv-keys F3B607488DB35A47 --keyserver keyserver.ubuntu.com
sudo pacman-key --lsign-key F3B607488DB35A47

2. Execution
Bash
# Clean previous build artifacts
sudo rm -rf work/

# Generate the ISO
sudo ./mkiso.sh

🗄️ System SpecsCategoryComponentBaseArch LinuxKernelCachyOS / ZenWMHyprland (Wayland)ShellZsh / FishBarCustom WaybarInstallerBranded Calamares

🤝 Credits
CachyOS Team for the optimized infrastructure.

ArchISO for the build framework.

Hyprland Community for the compositor.
