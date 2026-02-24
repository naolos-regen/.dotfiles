#!/bin/bash 

PACKAGES=( "gvim" "i3" "sway" "rofi" "wofi" "swww" "alacritty" "ufw" )
FONTS=( "ttf-iosevka-nerd" "ttf-viktor-mono-nerd" "ttf-ubuntu-nerd" "ttf-ubuntu-mono-nerd" "ttf-hack-nerd" )

uninstall_fonts()
{
	sudo pacman -R $FONTS
}

uninstall_nessesary()
{
	sudo pacman -R $PACKAGES
}


delete_all()
{
	rm -rdf ~/.vim ~/.vimrc ~/.gvimrc ~/.Xresources ~/.config/i3 ~/.config/sway ~/.config/swww/ ~/.config/keyboard-io ~/.config/rofi ~/.local/share/rofi ~/.config/htop ~/.config/wofi ~/Wallpapers
}

uninstall_fonts
uninstall_nessesary
delete_all
