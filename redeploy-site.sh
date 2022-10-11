#!/bin/bash

tmux kill-server

tmux new-session -d -s project_session

cd ./app

git fetch && git reset origin/main --hard

source python3-virtualenv/bin/activate

pip install -r requirements.txt

export FLASK_RUN_HOST=0.0.0.0

flask run --host=FLASK_RUN_HOST