!#/bin/sh
#apt install
 apt install neofetch testdisk gedit terminator  git nautilus gnome-clocks gnome-tweaks gnome-photos evince git  vlc -y 
#Garuda 

 # icons 
cp /mount/OS/Downloads/comands/garuda/BeautyLine /home/ved/.icons -r
# theme
cp /mount/OS/Downloads/comands/garuda/Sweet-Dark /home/ved/.themes -r	
#wallpapers 
cp /mount/OS/Downloads/comands/garuda/wall /home/ved -r



#auto cpu freq 
git clone https://github.com/AdnanHodzic/auto-cpufreq.git
cd auto-cpufreq   
./auto-cpufreq-installer -i 
auto-cpufreq --install   
auto-cpufreq --stats
apt upgrade -y
#grub theme

cd Top-5-Bootloader-Themes
 ./install.sh 
neofetch




