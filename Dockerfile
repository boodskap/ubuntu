FROM ubuntu:18.04
MAINTAINER Boodskap <platform@boodskap.io>

RUN apt-get -y update && apt-get install -y nginx sudo nodejs npm git software-properties-common netcat tar curl net-tools nano wget unzip rsyslog psmisc
RUN npm install pm2 -g
RUN add-apt-repository -y ppa:openjdk-r/ppa
RUN apt-get update -y
RUN apt-get install -y openjdk-13-jdk
RUN update-alternatives --config java
RUN apt-get install -y --fix-missing ant maven
RUN apt-get clean && apt-get autoclean && apt-get autoremove

CMD ["/bin/bash", "-c", "trap : TERM INT; sleep infinity & wait"]
