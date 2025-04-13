#!/bin/sh

#sudo pacman -S terminator fish
#terminator 
#fish
#cd  
curl -sS https://starship.rs/install.sh | sh
# at end paste eval "$(starship init bash)"

sudo nano ~/.bashrc

#at end paste starship init fish | source

sudo nano ~/.config/fish/config.fish

