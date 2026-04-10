iso_name="FunkyOS"
iso_label="FUNKY_GHOST"
iso_publisher="FunkyOS Dev <https://github.com/naveen16004>"
iso_application="FunkyOS Universal Ghost System"
install_dir="arch"
buildmodes=('iso')
# Added 'uefi-x86_64.systemd-boot' for better compatibility with modern laptops
# Modern Standard Naming
bootmodes=('bios.syslinux' 'uefi.systemd-boot')
arch="x86_64"
pacman_conf="pacman.conf"
airootfs_image_type="squashfs"
airootfs_image_tool_options=('-comp' 'zstd' '-Xcompression-level' '1')
# This ensures the 'archiso' boot hooks look for the correct label
file_permissions=(
  ["/etc/shadow"]="0:0:400"
  ["/etc/gshadow"]="0:0:400"
  ["/root"]="0:0:700"
  ["/usr/local/bin/choose-mirror"]="0:0:755"
  ["/usr/local/bin/Installation_Guide"]="0:0:755"
  ["/usr/local/bin/livecd-sound"]="0:0:755"
)
