#!/bin/bash

SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )

function link {
	local TARGET="${HOME}/${2}${1}"

	if [ -f $TARGET ] || [ -d $TARGET ]; then
		echo "$TARGET already exists."
	else
		ln -s "${SCRIPT_DIR}/${1}" "${HOME}/${2}"
		echo "$TARGET link created"
	fi
}

link .gitconfig
link .themes/
link nvim .config/
link .fonts/
