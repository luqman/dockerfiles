#!/bin/bash

umask 0000

function ts {
  echo [`date '+%b %d %X'`]
}

function configure {
  echo "$(ts) Move download-complete.sh to /config"
  mv /tmp/download-complete.sh /config/download-complete.sh
  chmod +x /config/download-complete.sh

  echo "$(ts) Create aria2.conf"
  env \
    | grep ^ARIA2 \
    | sed 's/ARIA2_//g' \
    | sed 's/_/-/g' \
    | awk '{print tolower($0)}' \
    > /config/aria2.conf

  echo "$(ts) Setting permissions"
  chown -R nobody:users /config /downloads
  chown -R g+rw /config /downloads
}

function start {
  echo "$(ts) Start aria2c daemon"
  exec /sbin/setuser nobody aria2c --conf-path=/config/aria2.conf
}

configure
start
