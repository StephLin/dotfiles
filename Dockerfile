FROM ubuntu:18.04

RUN apt update && apt install -y sudo

COPY . /dotfiles

RUN cd /dotfiles && sh setup.sh 
