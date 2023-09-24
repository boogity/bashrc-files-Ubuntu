#!/bin/bash

scriptDir="$( cd -- "$(dirname "$0")" >/dev/null 2>&1 ; pwd -P )"

#for object in $(basename $(find . -maxdepth 1 \( ! -name .git -and ! -name *.sh \))); do
for object in $(find . -maxdepth 1 \( ! -name '.git' -and ! -name *.sh \) -exec basename {} \;) ; do
    if [[ "$object" =~ ^.$ ]]; then
	:
    else
        echo "Creating symlink for $HOME/$object"
        if [[ -e "$HOME/$object" ]]; then
            echo "$object already exists in $HOME, backing up to $HOME/$object.BAK_$(date +%Y-%m-%d)"
            mv -f "$HOME/$object" "$HOME/$object.BAK_$(date +%Y-%m-%d)"
	fi
        ln -s "$scriptDir/$object" ~/${object}
    fi
done
