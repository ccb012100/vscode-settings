#!/usr/bin/env bash

CODE_DIR=$(dirname -- "$(readlink -f -- "$0")")

# add -n,--dry-run flag if testing
rsync --recursive --times --progress --protect-args "$HOME/Library/Application Support/Code/User/snippets" "$CODE_DIR/" || exit 1
rsync --recursive --times --progress --protect-args "$HOME/Library/Application Support/Code/User/keybindings.json" "$CODE_DIR/" || exit 1
rsync --recursive --times --progress --protect-args "$HOME/Library/Application Support/Code/User/settings.json" "$CODE_DIR/" || exit 1

code --list-extensions | sort > extensions.txt
