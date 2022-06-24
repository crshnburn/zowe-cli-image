FROM node:18-alpine

RUN npm install -g @zowe/cli@zowe-v2-lts
RUN zowe plugins install @zowe/zos-ftp-for-zowe-cli@zowe-v2-lts
