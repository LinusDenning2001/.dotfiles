#!/bin/bash

sudo apt update

function install {
	which $1 &> /dev/null

	if [$? -ne 0 ]; then
		echo "Installing: ${1}..."
		sudo apt install -y $1
	else
		echo "Already installed: ${1}"
	fi
}

# Basics
sudo snap neovim --classic
install firefox
install git
install make
install unzip
install ripgrep

# Compilers
#	C
install gcc
#	Pascal
# wget http://downloads.freepascal.org/fpc/dist/3.2.2/x86_64-linux/fpc-3.2.2.x86_64-linux.tar
#	Python
install Python3

# aestetic
install sassc
install gnome-tweeks
install gtk2-engines-murrine
install gnome-shell-extension-manager
# Extentions:
# 	User Themes
# 	Blur my Shell 
