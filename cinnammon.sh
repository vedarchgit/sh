#!/bin/bash
#
sudo pacman -S  lightdm lightdm-gtk-greeter

#
systemctl enable lightdm 
systemctl enable NetworkManager
