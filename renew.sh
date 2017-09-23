#!/bin/bash
sdir=`dirname $0`
. ${sdir}/config-lbase.sh
docker run -p 443:443 -v ${lbase}/etc:/etc/letsencrypt -v ${lbase}/log:/var/log/letsencrypt -t rpi-certbot renew
