@echo off
rem set COMPOSE_PROJECT_NAME=fiware

call setenv.bat

set DOCKER_FILE=docker-compose.yml
set PROJECT_NAME=fiware

rem docker compose -f %DOCKER_FILE% down
rem docker compose -f %DOCKER_FILE% pull
docker compose -f %DOCKER_FILE% -p %PROJECT_NAME% up --build --remove-orphans -d

:loop
docker compose -f %DOCKER_FILE% logs -t --until 1m
docker ps -a --format "table {{.ID}}\t{{.Names}}\t{{.Status}}\t{{.Ports}}"
pause
goto loop
