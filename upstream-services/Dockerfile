ARG GOLANG_VERSION=alpine3.9
FROM golang:${GOLANG_VERSION}

LABEL maintainer="ccinn <https://github.com/whiteCcinn/>"

COPY src/dispatcher-misc/src/go/ /www

RUN apk add git && \
  go get github.com/hashicorp/consul 

WORKDIR /www

EXPOSE 9501
