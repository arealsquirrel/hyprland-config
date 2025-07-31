#!/bin/bash

mkdir ~/.config
cp -r . ~/.config/

pacman -Syu nvim git ttf-firacode-nerd ttf-fira-mono waybar wofi firefox hyprland dunst terminus-font \
	gnome-keyring kitty dolphin pulsemixer mpd-mpris packer cmake make otf-font-awesome

sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

sudo pacman -S --needed git base-devel && git clone https://aur.archlinux.org/yay.git && cd yay && makepkg -si

yay -Syu steam minecraft-launcher tidal-hifi github-desktop morgen thunderbird hyfetch neofetch blener aseprite

