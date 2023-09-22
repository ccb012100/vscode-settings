#!/usr/bin/env bash

repo="$HOME"/src/vscode-settings
win="$HOME"/win

sync_from_home() {
    # add -n,--dry-run flag if testing
    rsync --recursive --times --progress --protect-args "$win/$1" "$repo"
}

sync_from_home "AppData/Roaming/Code/User/keybindings.json"
sync_from_home "AppData/Roaming/Code/User/settings.json"
sync_from_home "AppData/Roaming/Code/User/snippets"
sync_from_home "work/work-notes/vscode-profiles"

"$HOME/src/vscode-settings/format-files.sh"
