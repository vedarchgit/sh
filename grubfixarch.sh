#!/bin/sh
# arch grub not finding other OS
sudo pacman -S ntfs-3g os-prober
# go to last line and remove # disable os prober
sudo nano /etc/default/grub
sudo grub-mkconfig -o /boot/grub/grub.cfg

