#!/bin/bash

if [[ $(dconf dump / | grep visible-name | grep Gruvbox) != "" ]]; then
	echo Gruvbox terminal profile already exists
	exit 17
fi

SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )
DCONFDIR=/org/gnome/terminal/legacy/profiles:

function create {
    local PROFILE_IDS=($(dconf list $DCONFDIR/ | grep ^: |\
                        sed 's/\///g' | sed 's/://g'))
    local PROFILE_NAME="$1"
    local PROFILE_IDS_OLD="$(dconf read "$DCONFDIR"/list | tr -d "]")"
    local PROFILE_ID="$(uuidgen)"

    [ -z "$PROFILE_IDS_OLD" ] && local PROFILE_IDS_OLD="["  # if there's no `list` key
    [ ${#PROFILE_IDS[@]} -gt 0 ] && local delimiter=,  # if the list is empty
    dconf write $DCONFDIR/list \
        "${PROFILE_IDS_OLD}${delimiter} '$PROFILE_ID']"
    dconf write "$DCONFDIR/:$PROFILE_ID"/visible-name "'$PROFILE_NAME'"
    echo $PROFILE_ID
}

ID=$(create Gruvbox)

dconf load $DCONFDIR/:$ID/ < $SCRIPT_DIR/config/terminal.config
echo Gruvbox terminal config loaded
