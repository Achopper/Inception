
FROM    alpine:3.14
LABEL maintainer = "achopper@student.21-school.ru"

RUN     apk update && apk upgrade && apk add nginx php-gd php-xml openssl vim

EXPOSE  443
COPY    default.conf /etc/nginx/conf.d/default.conf
COPY    ./nginx_selfsigned.crt ./dhparam.pem /etc/ssl/certs/
COPY    ./nginx_selfsigned.key /etc/ssl/private/

RUN     mkdir -p /run/nginx

EXPOSE  80 443

CMD     nginx -g 'daemon off;'