#!/bin/bash

# TODO:
# fix addextension

# function checks if extension already exists, if not it installs it
# function addextension {
#     gnome-extensions list | grep $(basename ${1::-2}) &> /dev/null
#     if [[ $? -eq 0 ]]; then
#         echo already installed $(basename $1 extension)
#         return 17
#     fi
#     EXTENSION_ID=$(curl -s $2 | grep -oP 'data-uuid="\K[^"]+')
#     VERSION_TAG=$(curl -Lfs "https://extensions.gnome.org/extension-query/?search=$EXTENSION_ID" | jq '.extensions[0] | .shell_version_map | map(.pk) | max')
#     wget -O ${EXTENSION_ID}.zip "https://extensions.gnome.org/download-extension/${EXTENSION_ID}.shell-extension.zip?version_tag=$VERSION_TAG"
#     gnome-extensions install --force ${EXTENSION_ID}.zip
#     if ! gnome-extensions list | grep --quiet ${EXTENSION_ID}; then
#         busctl --user call org.gnome.Shell.Extensions /org/gnome/Shell/Extensions org.gnome.Shell.Extensions InstallRemoteExtension s ${EXTENSION_ID}
#     fi
#     gnome-extensions enable ${EXTENSION_ID}
#     rm ${EXTENSION_ID}.zip
#     echo installed $(basename $1)
# }
# 
# # extensions
# addextension https://extensions.gnome.org/extension/19/user-themes/
# addextension https://extensions.gnome.org/extension/3193/blur-my-shell/
