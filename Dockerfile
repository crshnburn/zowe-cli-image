FROM node:18-alpine

RUN mkdir -p /root/.zowe/settings
COPY imperative.json /root/.zowe/settings/imperative.json

RUN npm install -g @zowe/cli@zowe-v2-lts
RUN zowe plugins install @zowe/zos-ftp-for-zowe-cli@zowe-v2-lts

ENTRYPOINT zowe
