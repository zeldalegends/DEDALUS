@echo off

docker ps -a --format "table {{.Names}}\t{{.ID}}\t{{.Status}}\t{{.Ports}}\t{{.Image}}" | sort

pause
docker compose -p fiware logs --tail 10 -f
