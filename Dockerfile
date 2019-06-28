FROM ubuntu:18.04
MAINTAINER Boodskap <platform@boodskap.io>

RUN apt-get -y update && apt-get install -y nginx sudo nodejs npm git software-properties-common 
RUN npm install pm2 -g
RUN add-apt-repository -y ppa:openjdk-r/ppa
RUN apt-get update -y
RUN apt-get install -y openjdk-8-jdk
RUN update-alternatives --config java
RUN apt-get install -y --fix-missing ant maven
RUN apt-get clean && apt-get autoclean && apt-get autoremove 

CMD ["uname", "-a"]
