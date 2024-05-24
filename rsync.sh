#!/usr/bin/env bash

CODE_DIR=$(dirname -- "$(readlink -f -- "$0")")

# add -n,--dry-run flag if testing
rsync --recursive --times --progress --protect-args "$HOME/Library/Application Support/Code/User/settings.json" "$CODE_DIR/"

