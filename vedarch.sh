#!/bin/sh

#connect to ethernet
# req pac
pacman -Sy
pacman -S archlinux-keyring fastfetch fish
#preconfiguration file
lsblk
echo "pacman c||c"
nano /etc/pacman.conf
cp /etc/pacman.d/mirrorlist /etc/pacman.d/mirrorlist.bak
reflector --verbose --country 'India' -l 7 --sort rate --save /etc/pacman.d/mirrorlist
#make 250M biosboot , 600M efi parition ,2G linux swap ,rest ext4 and write using cfdisk
#and mark root as fdisk /dev/sda x A "n(r)" w
#format them as
echo "FORMAT" 
mkfs.vfat -F32 /dev/sda6
mkswap /dev/sda7
mkfs.ext4 /dev/sda8

#echo "BTRFS"
#mkfs.btrfs -L data /dev/sda8
#mount /dev/sda8 /mnt
#df -h /mnt 
#btrfs subvolume create /mnt/@root
#btrfs subvolume create /mnt/@home
#btrfs subvolume create /mnt/@snapshots
#btrfs subvolume create /mnt/@var
#ls /mnt
#umount /mnt 
#mount -o noatime,compress=lzo,space_cache,subvol=@root /dev/sda8 /mnt
#mkdir /mnt/{boot,var,home,.snapshots}
#mount -o noatime,compress=lzo,space_cache,subvol=@var /dev/sda8 /mnt/var
#mount -o noatime,compress=lzo,space_cache,subvol=@home /dev/sda2 /mnt/home
#mount -o noatime,compress=lzo,space_cache,subvol=@snapshots /dev/sda8 /mnt/.snapshots

echo "MOUNT"
mount /dev/sda8 /mnt
mkdir /mnt/boot
mount /dev/sda6 /mnt/boot
swapon /dev/sda7
mkdir /mnt/home
#mount /dev/sda5 /mnt/home
lsblk
sudo pacman -Sy

#pacman 
#nano /etc/pacman.conf
#mirrors
#cp /etc/pacman.d/mirrorlist /etc/pacman.d/mirrorlist.bak
#reflector --country IN --age 24 --protocol http,https --sort rate --save /etc/pacman.d/mirrorlist
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
echo "BASE"


pacstrap /mnt base base-devel linux linux-zen linux-zen-headers linux-firmware amd-ucode intel-ucode  nano sudo fastfetch ntfs-3g tmux vim vifm btrfs-progs ranger reflector pipewire 


genfstab -U /mnt >> /mnt/etc/fstab
subvol=@foo
arch-chroot /mnt



#ln -sf /usr/share/Asia/Kolkata /etc/localtime
#hwclock --systohc
#nano /etc/locale.gen
#locale-gen
#echo LANG=en_US.UTF-8 > /etc/locale.conf
#echo vedarch > /etc/hostname
#nano /etc/hosts
#127.0.0.1 localhost
#::1 localhost
#127.0.0.1 vedarch.localdomain vedarch

#mkinitcpio -P
#pacman -S networkmanager
#passwd

#echo "grub"

#pacman -S grub
#grub-install --target=i386-pc --efi-directory=/mnt/boot /dev/sda
#grub-mkconfig -o /boot/grub/grub.cfg

#pacman -S openssh
#systemctl enable sshd



#echo "DONE"

#exit
#umount -R /mnt



