# Yarn - Node.js using Yarn

Built on top of the official Node.js image, this image implements Yarn instead of the NPM. For Node.js documentation see the [official image](https://hub.docker.com/_/node/).

## On Build Container

### Node 6 On Build
```bash
FROM arhea/yarn:6-onbuild
# replace this with your application's default port
EXPOSE 8888
```

### Node 4 On Build
```bash
FROM arhea/yarn:4-onbuild
# replace this with your application's default port
EXPOSE 8888
```

## Custom Container

### Node 6
```bash
FROM arhea/yarn:6

# set the working directory to our source root
WORKDIR /usr/src/app

# copy the package.json and yarn.lock file
COPY package.json /usr/src/app
COPY yarn.lock /usr/src/app

# install the dependencies
RUN yarn install

# copy source code
COPY . /usr/src/app

# replace this with your application's default port
EXPOSE 8888

CMD [ "yarn" , "run" ]
```

### Node 4
```bash
FROM arhea/yarn:4

# set the working directory to our source root
WORKDIR /usr/src/app

# copy the package.json and yarn.lock file
COPY package.json /usr/src/app
COPY yarn.lock /usr/src/app

# install the dependencies
RUN yarn install

# copy source code
COPY . /usr/src/app

# replace this with your application's default port
EXPOSE 8888

CMD [ "yarn" , "run" ]
```
