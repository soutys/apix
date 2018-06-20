#!/usr/bin/env bash

mkdir -p ./ssl
cp /etc/ssl/certs/ssl-cert-snakeoil.pem ./ssl/server.crt
#cp /etc/ssl/certs/ca-certificates.crt ./ssl/bundle.crt
cp /etc/ssl/private/ssl-cert-snakeoil.key ./ssl/server.key
openssl dhparam -out ./ssl/dhparam.pem 1024
