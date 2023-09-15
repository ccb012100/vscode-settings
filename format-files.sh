#!/usr/bin/env bash
# cat files-to-format |
while read -r file; do
    jq . "$file" | sponge "$file"
done < <(fd -H --type file . --full-path "$HOME/src/vscode-settings/profiles/")
