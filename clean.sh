#!/bin/bash

echo -e "\033[0;36mRemoving Docker containers...\033[0m"
docker compose -p fiware down -v --remove-orphans && echo -e "\033[0;32mDone.\033[0m" || echo -e "\033[0;31mFAIL\033[0m"
