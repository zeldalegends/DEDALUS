#!/bin/bash

echo -e "\033[1;36mCONTAINERS \033[0m"
docker ps -a --format "table {{.Names}}\t{{.Status}}\t{{.Ports}}\t{{.ID}}" | sort
read -s -n 1 key && [[ $key == $'\e' ]] && exit

echo -e "\033[1;36mIMAGES \033[0m"
docker ps -a --format "table {{.Networks}}\t{{.Names}}\t{{.RunningFor}}\t{{.Image}}\t{{.Command}}\t{{.Mounts}}" | sort
