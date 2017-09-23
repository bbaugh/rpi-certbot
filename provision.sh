#!/bin/bash
sdir=`dirname $0`
. ${sdir}/config-lbase.sh
dstr=""
for d in ${domains[@]};do
	dstr+=" -d ${d}"
done
docker run -p 443:443 -v ${lbase}/etc:/etc/letsencrypt -v ${lbase}/log:/var/log/letsencrypt -t rpi-certbot certonly --standalone --agree-tos -m ${lemail} ${dstr}
