#!/bin/bash

# Mongo Express + Ngrok
docker run -it --rm --net=fiware_default --name fe-mongo -e ME_CONFIG_MONGODB_SERVER=mongo-db mongo-express
docker run -it --rm --net=fiware_default --name ngrok-mongo -e NGROK_AUTHTOKEN=2L2kdrNlcTBcxDERiOxTW3kyEaV_3siN3rWauYmt4KLGHrHZg ngrok/ngrok:latest http fe-mongo:8081

# phpMyAdmin + Ngrok
docker run -it --rm --network fiware_default --name fe-mysql phpmyadmin
docker run -it --rm --network fiware_default --name ngrok-mysql -e NGROK_AUTHTOKEN=2L2kdrNlcTBcxDERiOxTW3kyEaV_3siN3rWauYmt4KLGHrHZg ngrok/ngrok:latest http fe-mysql:8080
