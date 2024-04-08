#!/bin/bash

sudo chown -R 1000:1000 .
docker compose pull

docker compose down --remove-orphans --volumes
docker compose up --build --detach --remove-orphans

docker exec node-red bash -c "cd /data ; npm install --unsafe-perm --no-update-notifier --no-fund --only=production"
docker restart node-red

docker ps --all --format "table {{.ID}}\t{{.Names}}\t{{.Status}}\t{{.Ports}}"
