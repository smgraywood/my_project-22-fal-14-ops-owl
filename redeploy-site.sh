#!/bin/bash
cd ~/my_project-22-fal-14-ops-owl/app

git fetch && git reset origin/main --hard

docker compose -f docker-compose.prod.yml down

docker compose -f docker-compose.prod.yml up -d --build