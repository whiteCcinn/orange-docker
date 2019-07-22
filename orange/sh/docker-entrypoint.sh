#!/usr/bin/env bash

ORANGE_CONF=conf/orange.conf

if [[ ! -e /www/manifest/orangelib.meta ]];then
  opm install sumory/lor
  opm --install-dir=./ get zhangbao0325/orangelib=1.0.0
  luarocks install luafilesystem luasocket lrandom
  cp -v conf/{orange.conf.example,orange.conf}
  cp -v conf/{nginx.conf.example,nginx.conf}

  sed -i "s/\"host\": \"127.0.0.1\"/\"host\": \"${ORANGE_HOST}\"/g" ${ORANGE_CONF}
  sed -i "s/\"port\": \"3306\"/\"port\": \"${ORANGE_PORT}\"/g" ${ORANGE_CONF}
  sed -i "s/\"database\": \"orange\"/\"database\": \"${ORANGE_DATABASE}\"/g" ${ORANGE_CONF}
  sed -i "s/\"user\": \"root\"/\"user\": \"${ORANGE_USER}\"/g" ${ORANGE_CONF}
  sed -i "s/\"password\": \"\"/\"password\": \"${ORANGE_PWD}\"/g" ${ORANGE_CONF}
fi
