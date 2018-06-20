FROM ubuntu:bionic

MAINTAINER soutys "soutys@github"

RUN \
    apt-get update && \
    apt-get install -y locales nginx && \
    rm -rf /var/lib/apt/lists/* && \
    localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8 && \
    mkdir -p -m 0700 /var/empty && \
    chgrp www-data /var/empty

COPY nginx.conf /etc/nginx/nginx.conf
COPY ssl/ /etc/nginx/ssl/
COPY run_nginx.sh /run_nginx.sh

ENV LANG en_US.utf8

EXPOSE 80 443

# CMD ["/bin/bash", "-c", "while [ 1 ] ; do sleep 60 ; done"]
CMD ["/run_nginx.sh"]
