#!/bin/bash

# Install dependencies
pacman -S nodejs npm yarn nitrogen fish

# add ricemood coloring script
yarn add ricemood

# Install the compositor
yay -S jonaburg-picom-git

# Migrate config  folders settings
cp -r kitty ~/.config/
cp -r qtile ~/.config/
cp -r ricemood ~/.config/
cp -r Wallpapers ~/Pictures/

# Set our Nitrogen wallpaper
nitrogen ~/Pictures/Wallpapers/IntoTheVerse.png

# Configure our Fish shell
curl -fsSL https://starship.rs/install.sh | bash
echo 'starship init fish | source' >> ~/.config/fish/config.fish
cp starship.toml ~/.config/
chsh -s /$USER/bin/fish
