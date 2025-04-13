#!/bin/bash

lsblk
 sgdisk -Z /dev/sdx
 sgdisk -n1:0:+512M -t1:ef00 -c1:EFI -N2 -t2:8304 -c2:LINUXROOT /dev/sdx
 partprobe -s /dev/sdx
echo "encrypt"
cryptsetup luksFormat --type luks2 /dev/sdx2
 cryptsetup luksOpen /dev/sdx2 linuxroot
 echo "format"
 mkfs.vfat -F32 -n EFI /dev/sdx1
 mkfs.btrfs -f -L linuxroot /dev/mapper/linuxroot
 mount /dev/mapper/linuxroot /mnt
 mkdir /mnt/efi
 mount /dev/sdx1 /mnt/efi
 
 echo "btrfs"
 btrfs subvolume create /mnt/home
 btrfs subvolume create /mnt/srv
 btrfs subvolume create /mnt/var
 btrfs subvolume create /mnt/var/log
 btrfs subvolume create /mnt/var/cache
 btrfs subvolume create /mnt/var/tmp
 echo "mirrors"
reflector --country GB --age 24 --protocol http,https --sort rate --save /etc/pacman.d/mirrorlist
 "base install "
 pacstrap -K /mnt base base-devel linux linux-firmware amd-ucode vim nano cryptsetup btrfs-progs dosfstools util-linux git unzip sbctl kitty networkmanager sudo 
echo "en"
nano /mnt/etc/locale.gen
systemd-firstboot --root /mnt --prompt
arch-chroot /mnt locale-gen
arch-chroot /mnt useradd -G wheel -m walian 
arch-chroot /mnt passwd walian
# %wheel ALL=(ALL:ALL) NOPASSWD: ALL/s/^# //'  
nano /mnt/etc/sudoers
echo "quiet rw" >/mnt/etc/kernel/cmdline
 mkdir -p /mnt/efi/EFI/Linux
 
 
 
 
 
 
 systemctl --root /mnt enable systemd-resolved systemd-timesyncd NetworkManager
 systemctl --root /mnt mask systemd-networkd
 arch-chroot /mnt bootctl install --esp-path=/efi

 sync
 systemctl reboot --firmware-setup

sbctl status
sudo sbctl create-keys
sudo sbctl enroll-keys -m

 sudo sbctl sign -s -o /usr/lib/systemd/boot/efi/systemd-bootx64.efi.signed /usr/lib/systemd/boot/efi/systemd-bootx64.efi
 sudo sbctl sign -s /efi/EFI/BOOT/BOOTX64.EFI
 sudo sbctl sign -s /efi/EFI/Linux/arch-linux.efi
 sudo sbctl sign -s /efi/EFI/Linux/arch-linux-fallback.efi

 sudo pacman -S linux
 
