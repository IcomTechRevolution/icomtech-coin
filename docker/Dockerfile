FROM debian:stretch
LABEL maintainer="IcomTech Developers <dev@icomtech.org>"
LABEL description="Dockerised IcomTechCore, built from Travis"

RUN apt-get update && apt-get -y upgrade && apt-get clean && rm -fr /var/cache/apt/*

COPY bin/* /usr/bin/
