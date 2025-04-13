#!/bin/sh
sudo su 

neofetch

 apt update -y   
#brave
 apt install curl -y

 curl -fsSLo /usr/share/keyrings/brave-browser-archive-keyring.gpg https://brave-browser-apt-release.s3.brave.com/brave-browser-archive-keyring.gpg

echo "deb [signed-by=/usr/share/keyrings/brave-browser-archive-keyring.gpg] https://brave-browser-apt-release.s3.brave.com/ stable main"| tee /etc/apt/sources.list.d/brave-browser-release.list

 apt update -y 

 apt install brave-browser -y
brave-browser
#terminator
# apt install terminator 
#terminator 




#nala 
echo "deb http://deb.volian.org/volian/ scar main" |  tee /etc/apt/sources.list.d/volian-archive-scar-unstable.list; wget -qO - https://deb.volian.org/volian/scar.key |  tee /etc/apt/trusted.gpg.d/volian-archive-scar-unstable.gpg
 or 
 apt update -y &&  apt install nala
or 
 apt update -y &&  apt install nala-legacy -y

 nala fetch

apt() { 
  command nala "$@"
}
() {
  if [ "$1" = "apt" ]; then
    shift
    command  nala "$@"
  else
    command  "$@"
  fi
}

apt() { 
  command nala "$@"
}
() {
  if [ "$1" = "apt" ]; then
    shift
    command  nala "$@"
  else
    command  "$@"
  fi
} -1,2,3




#apt install
 nala install neofetch testdisk gedit terminator  git nautilus gnome-clocks gnome-tweaks gnome-photos evince git  vlc -y 
 
#Garuda 
 # icons 
cp /mount/OS/Downloads/comands/garuda/BeautyLine /home/ved/.icons -r
# theme
cp /mount/OS/Downloads/comands/garuda/Sweet-Dark /home/ved/.themes -r
#wallpapers 
cp /mount/OS/Downloads/comands/garuda/wall /home/ved -r



#auto cpu freq 
git clone https://github.com/AdnanHodzic/auto-cpufreq.git
cd auto-cpufreq &&  ./auto-cpufreq-installer -i 
&&  auto-cpufreq --install &&  auto-cpufreq --stats
&&  apt upgrade -y
#grub theme
cd Top-5-Bootloader-Themes
 ./install.sh 
neofetch




































