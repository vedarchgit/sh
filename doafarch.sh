#!/bin/bash

echo "update"
sudo pacman -Syu

echo "must pac"
# uncomment colors parelleldonloads add below it ILoveCandy
sudo pacman -S nano git vim neofetch

echo "time"
sudo timedatectl set-timezone Asia/Kolkata
echo "pacman conf"
sudo nano /etc/pacman.conf
sudo pacman -Sy
echo "fast mirrors "
sudo pacman -S reflector
cd 
sudo cp /etc/pacman.d/mirrorlist /etc/pacman.d/mirrorlist.bak /etc/pacman.d/mirrorlist
#sudo reflector --country IN --protocol http,https --sort rate --save /etc/pacman.d/mirrorlist
#OR
sudo reflector --verbose --country 'India' -l 7 --sort rate --save /etc/pacman.d/mirrorlist
sudo pacman -Sy

#echo "yay"
#sudo pacman -S --needed base-devel git
#cd
#sudo git clone https://aur.archlinux.org/yay.git 
#cd yay
#makepkg -si
#echo cinnamon
#sudo pacman -S xorg cinnamon lightdm light-gtk-greeter
#sudo systemctl enable lightdm
#sudo systemctl start lightdm

