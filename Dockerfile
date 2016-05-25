FROM ubuntu:16.04
MAINTAINER manwei manwei@alauda.cn

RUN apt-get update
RUN wget https://nodejs.org/dist/v6.2.0/node-v6.2.0-linux-x64.tar.xz
RUN tar xvf node-v6.2.0-linux-x64.tar.xz
RUN cd node-v6.2.0-linux-x64
RUN ln -s /root/node-v6.2.0-linux-x64/bin/node /usr/local/bin/node && ln -s /root/node-v6.2.0-linux-x64/bin/npm /usr/local/bin/npm
RUN node -v && npm -v
EXPOSE 80
COPY server.js /
CMD ["nodejs", "/server.js"]
