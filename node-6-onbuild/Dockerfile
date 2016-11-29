FROM node:6

ENV NODE_ENV production

RUN npm install -g yarn

RUN mkdir -p /usr/src/app

WORKDIR /usr/src/app

ONBUILD COPY package.json /usr/src/app/

ONBUILD RUN yarn install

ONBUILD COPY . /usr/src/app

CMD [ "yarn", "start" ]
