#!/bin/sh

cd ~/Projects/waveaccounting/waveaccounting

tmux set-option -g default-terminal "xterm"
tmux new-session -d -s wavedev

tmux new-window -t wavedev:1 -n shell 
tmux rename-window -t wavedev:1 "shell"
tmux send-keys -t wavedev:1 "workon wave" Enter "PS1=\$_OLD_VIRTUAL_PS1" Enter "clear" Enter

tmux new-window -t wavedev:2 -n servers  "./manage.py runserver_plus 0.0.0.0:8000"
tmux split-window -t wavedev:2 "tail -f ../logs/django.log"
tmux split-window -t wavedev:2 "./manage.py celeryd -Q celery,high_priority -E -l DEBUG"
tmux select-layout -t wavedev:2 even-vertical
tmux rename-window -t wavedev:2 "servers"

tmux new-window -t wavedev:3 -n ipython "./manage.py shell_plus"
tmux rename-window -t wavedev:3 "ipython"

tmux select-window -t wavedev:1
tmux attach-session -d -t wavedev


