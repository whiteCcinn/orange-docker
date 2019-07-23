#!/usr/bin/env bash

default_host='127.0.0.1'
default_port=3306
default_database='orange'
default_root='root'
default_password=''

ORANGE_CONF=conf/orange.conf
ORANGE_HOST=${MYSQL_HOST:-default_host}
ORANGE_PORT=${MYSQL_PORT:-default_port}
ORANGE_DATABASE=${MYSQL_DATABASE:-default_database}
ORANGE_USER=${MYSQL_USER:-default_root}
ORANGE_PWD=${MYSQL_PWD:-default_password}

if [[ ! -e /www/manifest/orangelib.meta ]];then
  opm install sumory/lor
  opm --install-dir=./ get zhangbao0325/orangelib
  luarocks install luafilesystem luasocket lrandom
  cp -v conf/{orange.conf.example,orange.conf}
  cp -v conf/{nginx.conf.example,nginx.conf}

  sed -i "s/\"host\": \"127.0.0.1\"/\"host\": \"${ORANGE_HOST}\"/g" ${ORANGE_CONF}
  sed -i "s/\"port\": \"3306\"/\"port\": \"${ORANGE_PORT}\"/g" ${ORANGE_CONF}
  sed -i "s/\"database\": \"orange\"/\"database\": \"${ORANGE_DATABASE}\"/g" ${ORANGE_CONF}
  sed -i "s/\"user\": \"root\"/\"user\": \"${ORANGE_USER}\"/g" ${ORANGE_CONF}
  sed -i "s/\"password\": \"\"/\"password\": \"${ORANGE_PWD}\"/g" ${ORANGE_CONF}
fi

cmd=$1

if [[ "${cmd}" != 'bash' ]];then
  bash /www/start.sh
fi