#!/bin/bash

PACKAGES=( "gvim" "i3" "sway" "rofi" "wofi" "swww" "alacritty" "ufw" )
FONTS=( "ttf-iosevka-nerd" "ttf-viktor-mono-nerd" "ttf-ubuntu-nerd" "ttf-ubuntu-mono-nerd" "ttf-hack-nerd" )

install_fonts()
{
	sudo pacman -S $FONTS
}

install_nessesary()
{
	sudo pacman -S $PACKAGES
}

setup_ufw()
{
	sufo ufw enable
}

copy_all()
{
	cp -r .config .local .vim Wallpapers linux-conf .vimrc .gvimrc .Xresources ~/
}

install_nessesary
install_fonts
setup_ufw
copy_all
