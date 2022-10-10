#!/bin/bash

tmux kill-server

tmux new-session -d -s project_session

tmux send 'cd my_project-22-fal-14-ops-owls' ENTER;

tmux send 'git fetch && git reset origin/main --hard' ENTER;

tmux send 'source python3-virtualenv/bin/activate' ENTER;

tmux send 'pip install -r requirements.txt' ENTER;

tmux send 'export FLASK_RUN_HOST=0.0.0.0' ENTER;
