FROM node:19-alpine

WORKDIR /usr/src/app

RUN yarn add selenium-webdriver
