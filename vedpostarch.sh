#!/bin/bash


#echo "mount"
#mount /dev/sdc2 /mnt

#mkdir /mnt/boot
#mount /dev/sdc5 /mnt/boot
#mkdir /mnt/home
#mount /dev/sdc4 /mnt/home






ln -sf /usr/share/Asia/Kolkata /etc/localtime
hwclock --systohc
nano /etc/locale.gen
locale-gen
echo LANG=en_US.UTF-8 > /etc/locale.conf
echo vedarch > /etc/hostname
nano /etc/hosts
#127.0.0.1 localhost
#::1 localhost
#127.0.0.1 vedarch.localdomain vedarch

mkinitcpio -P
pacman -S networkmanager
systemctl enable  NetworkManager
passwd

echo "grub"

pacman -S grub
grub-install --target=i386-pc --efi-directory=/mnt/boot /dev/sda

grub-mkconfig -o /boot/grub/grub.cfg


pacman -S openssh
systemctl enable sshd

echo "ALL DONE"

#exit
#umount -R /mnt

