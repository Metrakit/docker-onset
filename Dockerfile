FROM ubuntu:latest

RUN apt-get update
RUN apt-get install lib32gcc1 curl -y

RUN mkdir /srv/OnsetServer
RUN cd /srv/ && curl -sqL "https://steamcdn-a.akamaihd.net/client/installer/steamcmd_linux.tar.gz" | tar zxvf -

WORKDIR /srv/OnsetServer

COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]