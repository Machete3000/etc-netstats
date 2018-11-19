FROM node:11-alpine

ADD . /eth-netstats
WORKDIR /eth-netstats

RUN npm install && npm install -g grunt-cli && grunt

EXPOSE  3000
CMD ["npm", "start"]
