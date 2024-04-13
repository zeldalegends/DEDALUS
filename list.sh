#!/bin/bash

docker ps -a --format "table {{.Names}}\t{{.Status}}\t{{.Ports}}\t{{.ID}}" | sort
read -s -n 1 key && [[ $key != "" ]] && exit

echo -e "\033[1;36mCONTAINERS \033[0m"
docker ps -a --format "table {{.Networks}}\t{{.Names}}\t{{.RunningFor}}\t{{.Image}}\t{{.Command}}\t{{.Mounts}}" | sort
read -s -n 1 key && [[ $key != "" ]] && exit

echo -e "\033[1;36mLOGS \033[0m"
docker compose logs --tail 10 --follow
# docker ps -a --no-trunc --format json | jq
# docker inspect $(docker volume list -q) | jq
