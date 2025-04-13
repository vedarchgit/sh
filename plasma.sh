#!/bin/bash

echo "Installing plasma"
sudo pacman -Sy plasma plasma-meta plasma-wayland-session plasma-applications-meta sddm sddm-kcm 



#echo "startplasma"
#startplasma-x11


#sddm
sudo systemctl enable sddm.service
sudo systemctl start sddm.service

#sudo systemctl restart sddm


