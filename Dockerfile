FROM ubuntu:16.04
MAINTAINER Seti <seti@setadesign.net>

ENV DEBIAN_FRONTEND noninteractive

RUN apt update && \
    apt  install -y dnsmasq && \
    apt clean && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

EXPOSE 53 53/udp
ENTRYPOINT ["dnsmasq", "-d"]
