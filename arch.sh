#!/bin/sh

#connect to ethernet 
ping archlinux.org
# req pac
pacman -Sy
pacman -S archlinux-keyring neofetch ntfs-3g btrfs-progs 
#preconfiguration file
lsblk
echo "pacman c||c"
nano /etc/pacman.conf
cp /etc/pacman.d/mirrorlist /etc/pacman.d/mirrorlist.bak
reflector --country IN --age 24 --protocol http,https --sort rate --save /etc/pacman.d/mirrorlist
#make 250M biosboot , 600M efi parition ,2G linux swap ,rest ext4 and write using cfdisk
#and mark root as fdisk /dev/sda x A "n(r)" w
#format them as
echo "(format)" 
mkfs.vfat -F32 /dev/sdxe
mkswap /dev/sdxs
mkfs.ext4 /dev/sdxr
mkfs.ext4 /dev/sdxh

#echo "btrfs"
# btrfs subvolume create /mnt/home
# btrfs subvolume create /mnt/srv
# btrfs subvolume create /mnt/var
# btrfs subvolume create /mnt/var/log
# btrfs subvolume create /mnt/var/cache
# btrfs subvolume create /mnt/var/tmp

echo "mount"
mkdir /mnt
mount /dev/sdxr /mnt
mkdir /mnt/boot
mount /dev/sdxe /mnt/boot
mkdir /mnt/home
mount /dev/sdxh /mnt/home
swapon /dev/sdxs
lsblk
sudo pacman -Sy

#pacman 
#nano /etc/pacman.conf
#mirrors
cp /etc/pacman.d/mirrorlist /etc/pacman.d/mirrorlist.bak
reflector --country IN --age 24 --protocol http,https --sort rate --save /etc/pacman.d/mirrorlist
#install 
lsblk


#mirror=india
#disk config=pre-mounted /mnt
#sdc7=true if on disk ,if on usb f
#audio=pipewire 
# kernel = linux
#packages =neofetch nano   
#network=network man
#optional =multilib


lsblk
#
echo "vedarch"


pacstrap /mnt base base-devel linux linux-firmware nano sudo fastfetch ntfs-3g tmux vim vifm reflector


genfstab -U /mnt >> /mnt/etc/fstab
arch-chroot /mnt



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
passwd

echo "grub"

pacman -S grub
grub-install --target=i386-pc --efi-directory=/mnt/boot
grub-mkconfig -o /boot/grub/grub.cfg

pacman -S openssh
systemctl enable sshd


exit
umount -R /mnt



