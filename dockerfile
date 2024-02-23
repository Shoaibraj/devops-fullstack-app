******create docekr file and image of node.js of react application*******

install docker on ubuntu --

-for pkg in docker.io docker-doc docker-compose docker-compose-v2 podman-docker containerd runc; do sudo apt-get remove $pkg; done

-# Add Docker's official GPG key:
sudo apt-get update
sudo apt-get install ca-certificates curl
sudo install -m 0755 -d /etc/apt/keyrings
sudo curl -fsSL https://download.docker.com/linux/ubuntu/gpg -o /etc/apt/keyrings/docker.asc
sudo chmod a+r /etc/apt/keyrings/docker.asc

# Add the repository to Apt sources:
echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.asc] https://download.docker.com/linux/ubuntu \
  $(. /etc/os-release && echo "$VERSION_CODENAME") stable" | \
  sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt-get update

-sudo apt-get install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin

-sudo docker run hello-world

-sudo service docker start
sudo docker run hello-world


******install node.js on ubuntu machine*******

-sudo apt update

-sudo apt install curl gnupg2

-curl -fsSL https://deb.nodesource.com/setup_16.x | sudo -E bash -

-sudo apt install -y nodejs

-node -v
npm -v

-sudo apt update

-sudo apt install nodejs npm

-sudo apt install build-essential


********create react application********

-mkdir C:\Users\RAJ\AppData\Roaming\npm

-npm cache clean --force

-npx create-react app <your app name>

-cd <your app name> enter in your app 

-npm start 

-on browser your <instance ip>:3000

****** create <Dockerfile> ********
in that file
write 

FROM node:20

WORKDIR /nodeapp

COPY . .

RUN npm install

EXPOSE 3000
CMD  [ "npm", "start" ]

-upload this file to your machine and move into your <myapp> your react file

then run commad - docker build .

- docker image ls


when container get stuk open duplicate terminal and go to that directory
and run command - docker ps ---copy containner id 
--- dockert stop <containner id>

come to main - then -- docker image ls 
then run command -- docker run -d -p 3000:3000 <image id>

#running multiple containners- docker run -d -p 3001:3000 <image id>
                            - docker run -d -p 3002:3000 <image id>

#for automatically removing conatinner from list --- docker run -d --rm -p 3002:3000 <image id>


#for running conatinner by your name - docker run -d --rm --name "" -p 3002:3000 <image id>


#docker build with tag and version = docker build -t <name>:01 .

# how to delete docker image = docker rmi <name>:01

#Update our project= docker build -t <name>:01 .

#run docekr image = docker -d --rm --name "name" -p 3001:3000 app1:01

*******Pre-defined Images*********

== docker pull python
== docker image ls
== docker run python:latest
****nginx****

== docekr pull nginx
== docker image ls 
== docker run -d -p 8080:80 nginx:latest



*******Running container in Interactive mode********

if you have python file
exm ==== ====== 
user_name = input('what is your name - ')
print(f'welcome to cloudbliz {user_name}')

#calulation

print('program to sun two numbers')
num1 = int(input('enter first number '))
num2 = int(input('enter second number '))
result = num1 + num2
print(f'sum of two numbers are {result}')

#new one
print('some basic information of users')
name = input('what is your name ')
age = int(input('what is your age '))
print(f'the name of user is {name} and age is {age} ')

======================================================

create new docker file <Dockerfile>
===================================
FROM python

WORKDIR /nodeapp

COPY  ./main.py .

CMD [ "python", "main.py" ]
==================================

mv this both file in new dir then run below command

- docker build -t app2:01
- docker run app2:01
=it will give error then run interactive terminal

- docker run -it app2:01
================================================================================================

***********************Push Image in DockerHub*************************
create account in docker hub 

docker login
docker push <name>:tag 
