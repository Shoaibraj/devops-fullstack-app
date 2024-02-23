FROM ubuntu:22

LABEL devops="shoaib"

USER root

RUN apt update
RUN apt install curl gnupg2 -y
RUN curl -fsSL https://deb.nodesource.com/setup_16.x | bash - \
    && apt-get install -y nodejs
RUN apt update
RUN apt-get install -y npm
RUN apt install build-essential -y
#COPY /root/devops-fullstack-app/frontend/* /root/frontend/

WORKDIR /root/frontend

CMD [ "npm", "run", "build" ]


EXPOSE 3000