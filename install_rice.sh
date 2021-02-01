#!/bin/bash

# Install dependencies
sudo pacman -S nodejs npm yarn nitrogen fish exa bat ripgrep fd

# Install Anaconda
curl -O https://repo.anaconda.com/archive/Anaconda3-2020.11-Linux-x86_64.sh
bash Anaconda3-2020.11-Linux-x86_64.sh

# add ricemood coloring script
yarn add ricemood

# Install the compositor and emoji support
yay -S picom-jonaburg-git ttf-joypixels

# Migrate config  folders settings
cp -r kitty ~/.config/
cp -r qtile ~/.config/
cp -r ricemood ~/.config/
cp -r Wallpapers ~/Pictures/

# Set our Nitrogen wallpaper
nitrogen ~/Pictures/Wallpapers/IntoTheVerse.png

# Configure our Fish shell
curl -fsSL https://starship.rs/install.sh | bash
cp -r fish ~/.config/
#echo 'starship init fish | source' >> ~/.config/fish/config.fish
cp starship.toml ~/.config/
chsh -s /bin/fish
