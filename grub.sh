!#/bin/bash
#echo "''FUCK !' MICROSOFT"
#echo "grub after WINDOWS "

#sudo mount /dev/root /mnt/foo
#sudo mount /dev/efi /mnt/boot
#sudo mount --bind /dev /mnt/foo/dev && 
#sudo mount --bind /dev/pts /mnt/foo/dev/pts && 
#sudo mount --bind /proc /mnt/foo/proc && 
#sudo mount --bind /sys /mnt/foo/sys
#sudo chroot /mnt/foo


sudo grub-mkconfig -o /boot/grub/grub.cfg
grub-install /dev/sda
grub-install --recheck /dev/sda

#exit
#sudo umount /mnt/foo/dev/pts /mnt/foo/dev /mnt/foo/proc /mnt/foo/sys /mnt/foo


#sudo chroot "/mnt" apt-get purge -y --force-yes grub-common:i386
#sudo chroot "/mnt" apt-get purge -y --force-yes grub*-common grub-common:i386 shim-signed linux-signed

