FROM node:19

WORKDIR /opt

RUN apt-get update && apt-get install -y \ 
    unzip

ENV DRIVER=chromedriver_linux64
ENV CHROME_VERSION=111.0.5563.19

RUN wget http://chromedriver.storage.googleapis.com/${CHROME_VERSION}/${DRIVER}.zip && \
  unzip ${DRIVER}.zip && \
  rm -f ${DRIVER}.zip

COPY . .

WORKDIR /usr/src/app
