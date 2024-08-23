#!/bin/bash

SCRIPTDIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )

# make script runable before running
function run {
	chmod 775 $SCRIPTDIR/scripts/$1
	source $SCRIPTDIR/scripts/$1 $SCRIPTDIR
}

# run all scripts
run install.sh
run extensions.sh
run symlinks.sh
run terminal.sh
run aesthetic.sh

# run nvim to install plugins
nvim
