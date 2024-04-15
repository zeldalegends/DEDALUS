#!/bin/bash

echo ============
echo FIWARE SETUP
echo ============
echo by Alerox, 2024
echo
read -p "Modify nginx/nginx.conf with your domain ..." -n 1 -s key
nano nginx/nginx.conf
read -p "Set domain and email in init.sh ..." -n 1 -s key
nano init.sh
read -p "Launch init.sh to initialize Nginx and Node-RED ..." -n 1 -s key
./init.sh
read -p "Launch run.sh to run FIWARE ..." -n 1 -s key
./run.sh
