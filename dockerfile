FROM ubuntu:latest

LABEL project="docker"

USER root
RUN apt update
RUN sudo apt install nodejs npm -y 
RUN node --version
RUN npm -version

EXPOSE 3000

CMD [ "executable" ]