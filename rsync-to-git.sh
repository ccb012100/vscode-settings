#!/usr/bin/env bash

# add -n,--dry-run flag if testing

sync_from_home() {
    rsync --recursive --times --progress --protect-args "$HOME/win/$1" .
}

sync_from_home "AppData/Roaming/Code/User/keybindings.json"
sync_from_home "AppData/Roaming/Code/User/settings.json"
sync_from_home "AppData/Roaming/Code/User/snippets"
sync_from_home "work/work-notes/vscode-profiles"

"$HOME/src/vscode-settings/format-files.sh"