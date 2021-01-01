#!/bin/bash

sudo pacman -S xorg-server xorg-xinit xorg-apps mesa-libgl sakura xf86-input-synaptics lib32-mesa-libgl xf86-video-ati && sudo pacman -S cinnamon sddm && sudo systemctl enable sddm.service ttf-liberation ttf-dejavu opendesktop-fonts ttf-bitstream-vera ttf-arphic-ukai ttf-arphic-uming ttf-hanazono 
