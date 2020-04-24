FROM golang:1.13.1

ENV GO111MODULE=on

RUN apt-get update && \ 
    apt-get install -y libnss3-dev libx11-dev vim

RUN curl -sS -o - https://dl-ssl.google.com/linux/linux_signing_key.pub | apt-key add &&\
    echo "deb http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google-chrome.list &&\
    apt-get -y update &&\
    apt-get -y install google-chrome-stable

RUN google-chrome-stable --version