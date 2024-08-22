#!/bin/bash

SD=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )

function run {
	chmod 775 $SD/$1
	source $SD/$1
}

run install.sh
run extensions.sh
run symlinks.sh
run terminal.sh
run aesthetic.sh
