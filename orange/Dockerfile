FROM openresty/openresty:centos

LABEL maintainer="ccinn <https://github.com/whiteCcinn/>"

ENV ORANGE_VERSION="0.7.0"

ADD sh/docker-entrypoint.sh /docker-entrypoint.sh

RUN \
  chmod 755 docker-entrypoint.sh && \
  mv docker-entrypoint.sh /usr/local/bin && \
  mkdir -p /www && \
  yum install -y \
  gcc \
  make && \
  yum clean all && \
  rm -rf /var/cache/yum/*

WORKDIR /www

EXPOSE 80 7777 9999

ENTRYPOINT ["docker-entrypoint.sh"]
