#!/bin/bash
sdir=`dirname $0`
docker build -t rpi-certbot ${sdir}
