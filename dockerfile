FROM ubuntu:latest

LABEL project="docker"

USER root
RUN apt update
RUN sudo apt install nodejs npm -y 
RUN node -v
 npm -v
