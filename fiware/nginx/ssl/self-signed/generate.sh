#!/bin/bash

openssl req -x509 -newkey rsa:4096 -keyout private.key -out certificate.crt -sha256 -days 365 -nodes \
            -subj "/C=XX/ST=StateName/L=CityName/O=CompanyName/OU=CompanySectionName/CN=CommonNameOrHostname"
