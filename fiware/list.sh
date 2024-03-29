#!/bin/bash
# docker ps --all --format "table {{.ID}}\t{{.Names}}\t{{.Status}}\t{{.Ports}}"
docker ps --all --format "table {{.Names}}\t{{.Status}}\t{{.Ports}}\t{{.Image}}" | sort # LC_COLLATE=C sortxx
echo Press Enter to continue...
read key
docker compose logs --tail 10 --follow
