ARG MYSQL_VERSION=5.7
FROM mysql:${MYSQL_VERSION}

LABEL maintainer="ccinn <https://github.com/whiteCcinn/>"

ARG TZ=UTC
RUN ln -snf /usr/share/zoneinfo/${TZ} /etc/localtime && echo ${TZ} > /etc/timezone && chown -R mysql:root /var/lib/mysql/

CMD ["mysqld"]

EXPOSE 3306
