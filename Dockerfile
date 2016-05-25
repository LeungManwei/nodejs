FROM ubuntu:16.04
MAINTAINER manwei manwei@alauda.cn

RUN apt-get update
#安装各种工具
RUN apt-get install -y curl wget tar bzip2 unzip vim passwd sudo hostname net-tools rsync man
#下载nodejs


RUN cd / && wget https://nodejs.org/dist/v6.2.0/node-v6.2.0-linux-x64.tar.xz
RUN ls
RUN cd / && tar xvf node-v6.2.0-linux-x64.tar.xz
RUN sudo ln -s /root/node-v6.2.0-linux-x64/bin/node /usr/local/bin/node && sudo ln -s /root/node-v6.2.0-linux-x64/bin/npm /usr/local/bin/npm
RUN cd /
EXPOSE 80
COPY server.js /
CMD ["node", "/server.js"]
