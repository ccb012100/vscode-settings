#!/usr/bin/env bash

# add -n,--dry-run flag if testing

sync_from_home() {
    rsync --recursive --times --progress --protect-args "$HOME/$1" .
}

sync_from_home ".config/Code/User/keybindings.json"
sync_from_home ".config/Code/User/settings.json"
sync_from_home ".config/Code/User/snippets"
sync_from_home "win/work/work-notes/vscode-profiles"
