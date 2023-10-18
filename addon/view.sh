#!/bin/bash

# rpv97497@omeie.com
# docker run -it --rm --name ngrok --network testnet -e NGROK_AUTHTOKEN=2N730ZrY1GPmfjLbVuY60ePw5FL_3aeAWEbBAhSac97u3qDfX ngrok/ngrok:latest http node-red:1880

docker pull ngrok/ngrok:latest
docker run -it --rm --name ngrok --network fiware_default -v $(pwd)/ngrok.yml:/etc/ngrok.yml -e NGROK_CONFIG=/etc/ngrok.yml ngrok/ngrok:latest start --all
