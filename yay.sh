#!/bin/bash 
#run as user NOT ROOT
echo "clone into yay"
cd 
git clone https://aur.archlinux.org/yay.git 
cd yay
#makepkg -si


#yay not working
#yay: error while loading shared libraries: libalpm.so.13: cannot open shared object file: No such file or directory
#sudo ln -s /usr/lib/libalpm.so.13.0.0 /usr/lib/libalpm.so.14
