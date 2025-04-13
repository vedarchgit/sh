#!/bin/sh 
echo "::download xfce desktop"
sudo pacman -S xorg xfce4 
#lightdm lightdm-slick-greeter lightdm-gtk-greeter




#echo "reset xfce"
#pkill xfconfd
#sudo rm -rf ~/.config/xfce4/panel            
#sudo rm -rf ~/.config/xfce4/xfconf/xfce-perchannel-xml/xfce4-panel.xml

#sudo systemctl restart lightdm

#
#sudo mkdir -p ~/.themes/vacui/xfwm4/
#sudo touch ~/.themes/vacui/xfwm4/themerc



#reboot
