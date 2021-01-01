#!/bin/bash
loadkeys ru && setfont cyr-sun16 && nano /etc/locale.gen && locale-gen && export LANG=ru_RU.UTF-8 && cfdisk && mkfs.ext4 /dev/sda1 -L boot && mkswap /dev/sda2 -L swap && mkfs.ext4 /dev/sda3 -L root && mkfs.ext4 /dev/sda4 -L home && mount /dev/sda3 /mnt && mkdir /mnt/{boot,home} && mount /dev/sda1 /mnt/boot && mount /dev/sda4 /mnt/home && swapon /dev/sda2 && nano /etc/pacman.d/mirrorlist && pacstrap -i /mnt base base-devel linux-zen linux-zen-headers nano dhcpcd grub git && arch-chroot /mnt pacman -S grub && genfstab -p /mnt >> /mnt/etc/fstab && arch-chroot /mnt && nano /etc/locale.gen && locale-gen && grub-install /dev/sda && grub-mkconfig -o /boot/grub/grub.cfg && passwd && exit && umount /mnt/{boot,home,}