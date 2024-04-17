#!/bin/bash

echo ============
echo FIWARE SETUP
echo ============
echo by Alerox, 2024
echo
read -n 1 -s key -p "Modify nginx/nginx.conf with your domain ..."
nano nginx/nginx.template.conf
cp nginx/nginx.template.conf nginx/nginx.conf
read -n 1 -s key -p "Set domain and email in init.sh ..."
nano init.sh
read -n 1 -s key -p "Launch init.sh to initialize Nginx and Node-RED ..."
./init.sh
read -n 1 -s key -p "Launch run.sh to run FIWARE ..."
./run.sh
