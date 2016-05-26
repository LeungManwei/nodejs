FROM ubuntu:16.04
MAINTAINER manwei manwei@alauda.cn

RUN apt-get update
#安装各种工具
RUN apt-get install -y curl wget tar bzip2 unzip vim passwd sudo hostname net-tools rsync man 
#下载nodejs
RUN apt-get install nodejs-legacy
EXPOSE 80
COPY server.js /
CMD ["node", "server.js"]
