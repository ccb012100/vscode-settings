#!/usr/bin/env bash

CODE_DIR="$HOME/win/AppData/Roaming/Code/User"

# add -n,--dry-run flag if testing

sync_from_home() {
    rsync --recursive --times --progress --protect-args "$CODE_DIR/$1" .
}

sync_from_home "keybindings.json"
sync_from_home "settings.json"
sync_from_home "snippets"
