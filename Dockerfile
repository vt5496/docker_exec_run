FROM ubuntu:latest 

RUN apt-get update 
RUN apt-get -y install openssh-client
RUN ssh-keygen -t rsa -f /root/.ssh/id_rsa
