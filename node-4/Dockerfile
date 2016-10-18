FROM node:4

ENV NODE_ENV production

RUN npm install -g yarn

RUN mkdir -p /usr/src/app

WORKDIR /usr/src/app

CMD [ "yarn", "start" ]
