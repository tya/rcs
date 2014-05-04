#!/bin/sh

env_name=dev
cd ~
tmux new-session -d -s ${env_name} 'cd $PH && bash -i'
tmux split-window -v
#tmux send-keys -t ${env_name}:1.1 'vim $PT/todo.txt' Enter
#tmux split-window -h

tmux new-window 'cd $PH && bash -i'
#tmux send-keys -t ${env_name}:2.0 'vim' Enter

tmux select-window -t 1
tmux select-pane -t :1.0
tmux -2 attach-session -t ${env_name}
