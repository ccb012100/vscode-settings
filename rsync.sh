#!/usr/bin/env bash

CODE_DIR=$(dirname -- "$(readlink -f -- "$0")")

sync_from_home() {
    # add -n,--dry-run flag if testing
    rsync --recursive --times --progress --protect-args "$HOME/Library/Application Support/Code/User/$1" "$CODE_DIR/"
}

