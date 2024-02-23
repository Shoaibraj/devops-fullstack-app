FROM ubuntu:latest

LABEL project="docker"

USER root
RUN apt update
RUN apt install nodejs npm -y 
RUN node --version
RUN npm -version
RUN apt insatll npm -y
RUN npm install react-scripts --save
RUN npm install 
WORKDIR /app1

COPY . .


EXPOSE 3000

CMD [ "npm", "start" ]