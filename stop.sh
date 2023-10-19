#!/bin/bash

echo -e "\033[0;36mStopping Docker containers...\033[0m"
docker compose -p fiware stop && echo -e "\033[0;32mOK\033[0m" || echo -e "\033[0;31mFAIL\033[0m"
