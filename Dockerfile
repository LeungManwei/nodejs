FROM ubuntu:16.04
MAINTAINER manwei manwei@alauda.cn

RUN apt-get update
RUN apt-get install -y curl wget tar bzip2 unzip vim passwd sudo hostname net-tools rsync man

RUN node -v && npm -v
EXPOSE 80
COPY server.js /
CMD ["cd","~"]
CMD ["sudo,"wget","https://nodejs.org/dist/v6.2.0/node-v6.2.0-linux-x64.tar.xz"]
CMD ["sudo","tar","xvf node-v6.2.0-linux-x64.tar.xz && sudo cd node-v6.2.0-linux-x64"]
CMD ["sudo","ln","-s","/root/node-v6.2.0-linux-x64/bin/node","/usr/local/bin/node"]
CMD ["sudo","ln","-s","/root/node-v6.2.0-linux-x64/bin/npm","/usr/local/bin/npm"]
CMD ["cd","~"]
CMD ["node", "/server.js"]
