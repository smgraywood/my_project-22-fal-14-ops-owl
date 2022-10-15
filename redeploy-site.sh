#!/bin/bash
cd ./app

git fetch && git reset origin/main --hard

python3 -m venv python3-virtualenv

source python3-virtualenv/bin/activate

pip install -r requirements.txt

#fails at running db (mydb.connect)
export FLASK_RUN_HOST=0.0.0.0

flask run --host=FLASK_RUN_HOST

systemctl start myportfolio

systemctl enable myportfolio