#!/bin/bash

function set {
	gsettings set org.gnome.$1 $2 $3 &> /dev/null
	if [ $? -ne 0 ]; then
		echo $2 does not exist
	fi
}

# set background
set desktop.background picture-uri file:///home/linus/.themes/gruv%20LINUX.png
set desktop.background picture-uri-dark file:///home/linus/.themes/gruv%20LINUX.png
set desktop.screensaver picture-uri file:///home/linus/.themes/gruv%20LINUX.png
echo Aesthetic: set background

# set theme
set desktop.interface cursor-theme "Yaru"
set desktop.interface gtk-theme "Gruvbox-Dark"
set desktop.interface icon-theme "Yaru-olive-dark"
echo Aesthetic: set theme

# extentions
#  TODO: set up extensions
# L user-theme
# L blur-my-shell

# set RTC if windows is installed
read -p $'Are you running Windows alongside Linux? [y/n]\n' -n 1 -r
echo
if [[ $REPLY =~ ^[Yy]$ ]]; then
	timedatectl set-local-rtc 1
	echo RTC set to local time
fi
