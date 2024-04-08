#!/bin/bash

echo -e "\033[1;32mCONTAINERS\033[0m"
docker ps -a --format "table {{.Names}}\t{{.Image}}\t{{.RunningFor}}\t{{.Status}}\t{{.ID}}" | sort # LC_COLLATE=C sortxx
echo -e "\033[1;34mdocker container ls -a --no-trunc --format='{{json .}}' | jq \033[0m"

read -s -n 1 key && [[ $key != "" ]] && exit

echo -e "\033[1;32mNETWORKING\033[0m"
docker ps -a --format "table {{.Networks}}\t{{.Names}}\t{{.Ports}}\t{{.ID}}" | sort
echo -e "\033[1;34mdocker inspect network \$(docker network list -q) | jq \033[0m"

read -s -n 1 key && [[ $key != "" ]] && exit

echo -e "\033[1;32mENTRYPOINTS\033[0m"
docker ps -a --no-trunc --format "table {{.Names}}\t{{.Command}}" | sort
echo -e "\033[1;34mdocker inspect \$(docker ps -a -q) | jq \033[0m"

read -s -n 1 key && [[ $key != "" ]] && exit

echo -e "\033[1;32mVOLUMES\033[0m"
docker ps -a --no-trunc --format "table {{.Names}}\t{{.Mounts}}" | sort
echo -e "\033[1;34mdocker inspect volume \$(docker volume list -q) | jq \033[0m"

read -s -n 1 key && [[ $key != "" ]] && exit

echo -e "\033[1;32mLOGS\033[0m"
docker compose logs --tail 10 --follow
# docker ps -a --no-trunc --format json | jq
