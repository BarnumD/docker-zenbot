FROM phusion/baseimage:0.9.19

#Prerequisites
RUN apt-get update && apt-get upgrade -y; \
    apt-get install -y apt-utils ca-certificates git npm xvfb xz-utils

#Setup node - Taken from node docker image v6
ENV NPM_CONFIG_LOGLEVEL info
ENV NODE_VERSION 6.4.0

RUN curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-x64.tar.xz"; \
   tar -xJf "node-v$NODE_VERSION-linux-x64.tar.xz" -C /usr/local --strip-components=1
########################

WORKDIR /usr/src
#Download & setup zenbot 
RUN git clone https://github.com/carlos8f/zenbot.git; \
    cd zenbot; \
    npm install; \
    rm -Rf /usr/local/bin/zenbot; \
    npm link


#Setup auto start service
ADD build/*.sh /
RUN mkdir -p /etc/service/zenbot_server; ln -s /service_start_zenbot_server.sh /etc/service/zenbot_server/run; \
    mkdir -p /etc/service/zenbot_reducer; ln -s /service_start_zenbot_reducer.sh /etc/service/zenbot_reducer/run; \
    mkdir -p /etc/service/zenbot_run; ln -s /service_start_zenbot_run.sh /etc/service/zenbot_run/run; \
    chmod 750 /service_start_zenbot*.sh

########################
WORKDIR /usr/src/zenbot

CMD ["/sbin/my_init"]
