#!/usr/bin/env bash

CODE_DIR=$(dirname -- "$(readlink -f -- "$0")")

sync_from_home() {
    # add -n,--dry-run flag if testing
    rsync --recursive --times --progress --protect-args "$CODE_DIR/$1" .
}

sync_from_home "keybindings.json"
sync_from_home "settings.json"
sync_from_home "snippets"

./format-files.sh
