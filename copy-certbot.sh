#!/bin/bash
files=( setup.py acme certbot )
for fl in ${files[@]}; do
  if [ -e ${fl} ]; then
    rm -rf ${fl} 
  fi
  rsync -a ../certbot/${fl} ./
done 
