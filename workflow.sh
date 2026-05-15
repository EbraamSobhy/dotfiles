#!/usr/bin/env bash

projects="$HOME/Coding"

selected=$(find "$projects" -maxdepth 2 -type d | fzf)

[ -z "$selected" ] && exit

session=$(basename "$selected")

tmux new-session -d -s "$session" -c "$selected"

tmux send-keys -t "$session" "nvim ." C-m

tmux attach -t "$session"
