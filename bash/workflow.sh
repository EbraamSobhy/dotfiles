#!/usr/bin/env bash

DIR1="$HOME/Coding"
DIR2="$HOME/Working"

# Choose base directory
BASE_DIR=$(
    printf "%s\n%s\n" "$DIR1" "$DIR2" |
    fzf --prompt="Select base directory: "
)

[ -z "$BASE_DIR" ] && exit 0
[ ! -d "$BASE_DIR" ] && exit 1

# Choose project folder inside selected directory
SELECTED=$(
    find "$BASE_DIR" -mindepth 1 -maxdepth 1 -type d |
    fzf --prompt="Select project: "
)

[ -z "$SELECTED" ] && exit 0

tmux new-session -c "$SELECTED"
