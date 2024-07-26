#!/bin/bash

scriptDir="$( cd -- "$(dirname "$0")" >/dev/null 2>&1 ; pwd -P )"

#for object in $(basename $(find . -maxdepth 1 \( ! -name .git -and ! -name *.sh \))); do
for object in $(find . -maxdepth 1 \( ! -name '.git' -and ! -name *.sh \) -exec basename {} \;) ; do
	echo "===== FOUND DOTFILE: $object ====="
    if [[ "$object" =~ ^.$ ]]; then
        # Don't symlink CWD ('.')
        echo "Doing nothing for $object"
    elif [[ "$object" =~ '.gitignore' ]]; then
        # Don't symlink .gitignore into $HOME
        echo "Doing nothing for $object"
    else
        # Symlink everything else
        echo "Creating symlink to $HOME/$object"

        # Backup existing files first though
        # Is it a file? Is it a dir? Is it a symlink (handles broken symlinks)
        if [[ -e "$HOME/$object" || -d "$HOME/$object" || -L "$HOME/$object" ]]; then
            echo "$object already exists in $HOME, backing up to $HOME/$object.BAK_$(date +%Y-%m-%d)"
            mv -f "$HOME/$object" "$HOME/$object.BAK_$(date +%Y-%m-%d)"
        fi
        ln -s "$scriptDir/$object" "$HOME/$object"
    fi
done
