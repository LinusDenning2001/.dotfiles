#!/bin/bash

sudo apt update &> /dev/null
echo applications updated

# checks if program exists, if not it installs it
function install {
	which $1 &> /dev/null

	if [ $? != 0 ]; then
		sudo apt install -y $1 &> /dev/null
		echo "Installed: ${1}"
	else
		echo "Already installed: ${1}"
	fi
}

# Basics
sudo snap install nvim --classic 1> /dev/null
install tree
install firefox
install git
install make
install unzip
install ripgrep

# Compilers
#	C
install gcc

# aestetic
install neofetch
install sassc
install gnome-tweaks
install gtk2-engines-murrine
install gnome-shell-extension-manager
