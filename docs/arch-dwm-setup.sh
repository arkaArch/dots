#! /bin/bash

# This is the script which I install after installing hyprland on the machine
# The .Xresources -> Xft.dpi part is for scalling of resolution 2560x1600 in 16" screen

# Install X apps
sudo pacman -S xorg xorg-xinit xwallpaper

# Install the suckless programs:
cd $HOME/dots/suckless
cd dwm
sudo make clean install
cd ../dmenu
sudo make clean install
cd ../st
sudo make clean install


# Symlink X-files:
ln -sv ~/dots/suckless/X/{.xinitrc,.Xresources} $HOME

# Enable tap to click
sudo cp ~/dots/suckless/X/90-touchpad.conf /etc/X11/xorg.conf.d/
