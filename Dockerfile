FROM ubuntu:16.04
MAINTAINER Seti <seti@setadesign.net>

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update && \
    apt-get install -y dnsmasq \

EXPOSE 53 53/udp
ENTRYPOINT ["dnsmasq", "-d"]
