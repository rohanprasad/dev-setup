#!/bin/bash
set -e

docker build -t node-backend .

docker run --rm -d --name hello-app --mount type=bind,source=$PWD/app,target=/app -p 3000:3000 node-backend:latest

docker exec -it hello-app /bin/bash -c "pm2 start /app/index.js --watch"