#!/usr/bin/env sh

DOMAIN="nginx_selfsigned"
ORG="School21"
CITY="Moscow"
NAME="localhost"
RSA_LEN=2048
DAYS=365
SUBJ="/C=RU/ST=$CITY/L=M$CITY/O=$ORG/CN=$NAME"

openssl req -x509 -nodes -days $DAYS -newkey rsa:$RSA_LEN -keyout $DOMAIN.key -out $DOMAIN.crt -subj $SUBJ

openssl dhparam -out dhparam.pem 2048