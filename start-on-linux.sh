#!/bin/bash

echo "\033[0;44m HYPERRIDE Setup \033[0m"
# sudo chown -R 1000:1000 node-red
echo "\033[0;34mUpdating Docker images...\033[0m"
docker compose pull && echo "\033[0;32mDocker images updated.\033[0m"
# docker compose down -v --remove-orphans
echo "\033[0;34mBuilding Docker containers...\033[0m"
docker compose -p fiware up -d --remove-orphans --build && echo "\033[0;32mDocker containers built.\033[0m"
echo ""
echo "\033[0;44m ICT Platform \033[0m"
echo "\033[0;33mby Alerox 2023\033[0m"
echo ""
node -e "console.log(require('os').release())"
node -e "console.log(require('os').version())"
docker -v
ver=$(node -v); echo "Node.js $ver"
echo ""
echo "\033[1;36mWelcome to HYPERRIDE!\033[0m"
docker ps -a --format "table {{.ID}}\t{{.Names}}\t{{.Status}}\t{{.Ports}}"
echo ""
echo "\033[0;36mNotify Node-RED app on Replit...\033[0m"
curl -X POST https://fiware.zeldalegends.repl.co/codespaces -H 'Content-Type: application/json' -d '{"started":true}'
#
# ===============
# USEFUL COMMANDS
# ===============
#
# ------------------------------
# Generate hash for access token
# ------------------------------
# node -e "console.log(require('crypto').createHash('sha3-256').update('xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx').digest('hex'))"
#
# ----------------------
# MySQL dump and restore
# ----------------------
#
# docker exec db-mysql /usr/bin/mysqldump --databases -u root --password=secret idm > backup.sql
# cat backup.sql | docker exec -i db-mysql /usr/bin/mysql -u root --password=secret idm
#
# ----------------------
# Docker common commands
# ----------------------
# docker exec -it node-red /bin/bash
# docker logs fiware-orion --tail 10 -f