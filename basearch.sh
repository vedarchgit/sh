#!/bin/bash

echo "BASE"

pacstrap /mnt base base-devel linux linux-firmware intel-ucode sudo nano vim ranger reflector ntfs-3g fastfetch tmux


genfstab -U /mnt >> /mnt/etc/fstab 
subvol=@foo 
