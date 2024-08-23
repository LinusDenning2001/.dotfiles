#!/bin/bash

SCRIPTDIR=$1

# creats checks if symlink already exists, if not creat one
function link {
	local TARGET="${HOME}/${2}$(basename $1)"

	if [ -f $TARGET ] || [ -d $TARGET ]; then
		echo "$TARGET already exists."
		return
	fi

	ln -s "${SCRIPTDIR}/${1}" "${HOME}/${2}"
	echo "$TARGET link created"
}

link .gitconfig
link .themes/
link nvim .config/
link .fonts/
link .bash_aliases
link .themes/gtk-4.0/assets/ .config/gtk-4.0/
link .themes/gtk-4.0/gtk.css .config/gtk-4.0/
link .themes/gtk-4.0/thumbnail.png .config/gtk-4.0/

fc-cache -f
