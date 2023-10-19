#!/bin/bash
echo -e "\033[0;36mDOCKER CONTAINERS\033[0m"
docker ps -a --format "table {{.ID}}\t{{.Names}}\t{{.Status}}\t{{.Ports}}"
echo -e "\033[0;32mPress Enter to continue...\033[0m"
read key
echo -e "\033[0;36mDOCKER LOGS\033[0m"
docker compose -p fiware logs --tail 10 -f
