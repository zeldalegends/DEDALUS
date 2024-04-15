#!/bin/bash

echo -e "\033[1;36mLOGS \033[0m"
docker compose logs --tail 10 --follow
# docker ps -a --no-trunc --format json | jq
# docker inspect $(docker volume list -q) | jq
