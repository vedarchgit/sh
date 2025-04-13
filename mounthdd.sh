#!/bin/bash

#echo "mkdir /hdd"
#sudo mkdir /hdd
#sudo mkdir /hdd/home /hdd/x /hdd/D /hdd/Z /hdd/pw  /hdd/ved

echo "mount hdd"
sudo mount /dev/sdb1 /hdd/home
sudo mount /dev/sdb2 /hdd/x	
sudo mount /dev/sdb3 /hdd/D
sudo mount /dev/sdb4 /hdd/ved
sudo mount /dev/sdb5 /hdd/Z
#sudo mount /dev/sdb9 /hdd/W
sudo mount /dev/sdb6 /hdd/pw
#sudo mount /dev/sdb12 /hdd/root
#sudo mount /dev/sdb13 /hdd/timeshift

