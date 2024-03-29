#!/bin/bash

# jofag12024@etondy.com
# docker run -it --rm --name ngrok --network testnet -e NGROK_AUTHTOKEN=2N790LnsQbKo5iF2teAKEdpJ7q0_6BEZbvZpgnEM32dnuf3sy ngrok/ngrok:latest http node-red:1880

# Mongo Express
docker run --rm --net=fiware_default --name fe-mongo -e ME_CONFIG_MONGODB_SERVER=mongo-db \
mongo-express

# phpMyAdmin
docker run --rm --net=fiware_default --name fe-mysql \
phpmyadmin

docker run --rm --net=fiware_default --name ngrok -e NGROK_CONFIG=/etc/ngrok.yml -v $(pwd)/ngrok.yml:/etc/ngrok.yml \
ngrok/ngrok:latest start --all
