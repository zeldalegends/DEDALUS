#!/bin/bash

                               

domain=$INSERT_YOUR_DOMAIN_HERE
email=$INSERT_YOUR_EMAIL_HERE

                               

# Domains must contain only letters and numbers (e.g., "try-it.noip.org" is not valid).
# To register without email use: "--register-unsafely-without-email" (NOT RECOMMENDED).
# https://eff-certbot.readthedocs.io/en/stable/using.html#certbot-command-line-options.

# docker run --rm -v $(pwd)/node-red/data:/data node:18 bash -c "cd /data ; npm install --unsafe-perm --no-update-notifier --no-fund --only=production"

docker run --rm -p 80:80 \
  -v ./certbot/conf/:/etc/letsencrypt/ \
  -v ./certbot/www/:/var/www/certbot/ \
  certbot/certbot certonly \
  --standalone --preferred-challenges=http \
  --domain $domain \
  --email $email --no-eff-email \
  --agree-tos --keep-until-expiring \
  --non-interactive --verbose --rsa-key-size 4096
