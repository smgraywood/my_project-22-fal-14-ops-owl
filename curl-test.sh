#!/bin/bash
curl --request GET http://localhost:5000/api/timeline_post
{"timeline_posts": []}

curl http://localhost:5000/api/timeline_post
{"timeline_posts": []}