#!/bin/bash

OUTPUT=$(dconf dump / | grep visible-name)
grep Gruvbox <<< $x &> /dev/null

if [ $? != 0 ]; then
	echo Gruvbox terminal profile already exists
	exit 17
fi
echo "test"
