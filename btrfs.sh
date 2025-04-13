#!/bin/bash

echo "BTRFS"
mkfs.btrfs -f -L data /dev/sda8
mount /dev/sda8 /mnt
df -h /mnt
btrfs subvolume create /mnt/@root
btrfs subvolume create /mnt/@home
btrfs subvolume create /mnt/@snapshots
btrfs subvolume create /mnt/@var


umount /mnt
mount -o noatime,compress=lzo,space_cache,subvol=@root /dev/sda8 /mnt
mkdir /mnt/{boot,var,home,.snapshots}
mount -o noatime,compress=lzo,space_cache,subvol=@var /dev/sda8 /mnt/var
mount -o noatime,compress=lzo,space_cache,subvol=@home /dev/sda1 /mnt/home
mount -o noatime,compress=lzo,space_cache,subvol=@snapshots /dev/sda9 /mnt/.snapshots

echo "MOUNT"
mount /dev/sda8 /mnt
