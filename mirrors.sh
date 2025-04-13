#!/bin/bash 

#mirrors not working 
echo "REFLECTOR"
sudo cp /etc/pacman.d/mirrorlist /etc/pacman.d/mirrorlistbak 

sudo reflector --verbose --country 'India'  -l 10 --sort rate --save /etc/pacman.d/mirrorlist
 
#sudo pacman -Sy
#sudo reflector --country IN --protocol http,https --sort rate --save /etc/pacman.d/mirrorlist
#sudo  pacman -Sy

#if above not work  the#n
 
#echo "manual"
#sudo cp mirrorlist /etc/pacman.d/mirrorlist

sudo pacman -Sy
