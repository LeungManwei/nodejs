FROM ubuntu:14.04
MAINTAINER manwei manwei@alauda.cn

RUN apt-get update
#安装各种工具
RUN apt-get install -y curl wget tar bzip2 unzip vim passwd sudo hostname net-tools rsync man
#下载nodejs
RUN cd /opt && \
wget https://nodejs.org/dist/v6.2.0/node-v6.2.0-linux-x64.tar.gz && \
tar xvf node-v6.2.0-linux-x64.tar.gz && \
ln -s /opt/node-v6.2.0-linux-x64/bin/node /usr/local/bin/node && \
ln -s /opt/node-v6.2.0-linux-x64/bin/npm /usr/local/bin/npm && \
rm -f /opt/node-v6.2.0-linux-x64.tar.gz

EXPOSE 80
COPY server.js /root
CMD ["node", "server.js"]
