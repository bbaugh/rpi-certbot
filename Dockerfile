FROM resin/rpi-raspbian:stretch

RUN apt-get update && apt-get install -y certbot && rm -rf /var/lib/apt/lists/*

ENTRYPOINT [ "certbot" ]
EXPOSE 443
VOLUME /var/lib/letsencrypt /etc/letsencrypt /var/log/letsencrypt
WORKDIR /opt/certbot

