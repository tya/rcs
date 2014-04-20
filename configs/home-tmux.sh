#!/bin/sh

env_name=desktop
cd ~
tmux new-session -d -s ${env_name}
tmux split-window -v
tmux send-keys -t ${env_name}:1.1 'vim ~/Desktop/todo.txt' Enter
tmux split-window -h
tmux select-pane -t 1
tmux -2 attach-session -t ${env_name}

