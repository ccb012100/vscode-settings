#!/usr/bin/env bash

# add -n,--dry-run flag if testing

sync_from_home() {
    rsync --recursive --times --progress --protect-args "$1" .
}

sync_from_home "$HOME/win/AppData/Roaming/Code/User/keybindings.json"
sync_from_home "$HOME/win/AppData/Roaming/Code/User/settings.json"
sync_from_home "$HOME/win/AppData/Roaming/Code/User/snippets"
