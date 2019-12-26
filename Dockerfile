FROM node:12.8-alpine

RUN apk add --no-cache --virtual .build-deps openssh-client openssh-keygen bash

# Create app directory
WORKDIR /usr/src/app

RUN npm i -g @nestjs/cli

# Install app dependencies
EXPOSE 8080
CMD [ "npm", "start" ]
