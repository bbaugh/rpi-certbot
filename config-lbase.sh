#!/bin/bash
sdir=`dirname $0`
if [ ! -e "${sdir}/rpi-certbot.rc" ]; then
	echo "Could not find configuration file at:"
	echo "${sdir}/rpi-certbot.rc"
	exit 1
fi

. ${sdir}/rpi-certbot.rc
if [ -z "${lbase}" ]; then
	echo "Configuration issue: lbase not set."
	exit 1
fi
if [ ! -d "${lbase}/log" ]; then
	echo "Making log dir in ${lbase}"
	mkdir -p ${lbase}/log
fi
if [ ! -d "${lbase}/etc" ]; then
	echo "Making etc dir in ${lbase}"
	mkdir -p ${lbase}/etc
fi
