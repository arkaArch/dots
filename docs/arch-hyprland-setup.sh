#! /bin/bash
 
# Start the script from home:
cd $HOME
mkdir ~/.config


# Install required drivers for nvidia gpu:
sudo pacman -S mesa intel-media-driver


# Install hyprland and peripherals
sudo pacman -S hyprland hyprpaper hypridle hyprlock waybar kitty alacritty wofi
ln -sv ~/dots/hyprconfs/{hypr,kitty,alacritty,waybar,wofi} ~/.config/


# Installing file managers
sudo pacman -S yazi ffmpegthumbnailer p7zip jq poppler fd ripgrep fzf zoxide \
    imagemagick thunar catfish gvfs tumbler thunar-volman thunar-archive-plugin \
    thunar-media-tags-plugin file-roller poppler-glib gvfs-mtp unrar 
ln -sv ~/dots/hyprconfs/yazi ~/.config/


# Sound and brightness:
sudo pacman -S pipewire pipewire-audio pipewire-alsa pipewire-pulse pamixer sof-firmware brightnessctl


# Music and video programs:
sudo pacman -S mpd ncmpcpp mpv
ln -sv ~/dots/hyprconfs/{mpd,ncmpcpp} ~/.config
systemctl --user enable mpd
systemctl --user start mpd


# Fonts:
sudo pacman -S noto-fonts-{cjk,emoji,extra}
sudo pacman -S ttf-{jetbrains-mono-nerd,firacode-nerd,cascadia-code-nerd}
ln -sv ~/dots/hyprconfs/fontconfig ~/.config


# Browser, image viewer & calculator:
sudo pacman -S firefox ristretto galculator

# Screen shot:
sudo pacman -S grim slurp

# Firmware updater
sudo pacman -S fwupd

# Bluetooth
sudo pacman -S bluez-utils blueman
sudo systemctl enable bluetooth.service


# Cli tools:
sudo pacman -S pacman-contrib tree git neofetch yt-dlp
ln -sv ~/dots/hyprconfs/neofetch ~/.config


# Desktop portal:
sudo pacman -S xdg-desktop-portal-hyprland xdg-desktop-portal-gtk


# Z-Shell:
sudo pacman -S zsh zsh-{completions,syntax-highlighting,autosuggestions}
chsh -s $(which zsh)
rm -r ~/.bash*
ln -sv ~/dots/hyprconfs/zsh/.zshrc ~/.zshrc


# Notification daemon:
sudo pacman -S libnotify dunst
ln -sv ~/dots/hyprconfs/dunst ~/.config


# Link neovim config:
ln -sv ~/dots/nvim ~/.config


# Look & feel for gtk apps:
sudo pacman -S nwg-look arc-gtk-theme papirus-icon-theme
