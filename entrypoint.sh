#!/bin/bash
cd /home/container

#Add java to bashrc

#ASCII LEGAL



ccat -G Plaintext="purple" -G String="purple" -G String="purple" -G Punctuation="purple" -G Keyword="purple" -G Type="purple" -G Literal="purple" -G Decimal="purple" -G Comment="purple" -G HTMLTag="purple"<< "docker-ascii"
 ▄▄▄· ▄▄▄· ▪  .▄▄▄  ▄• ▄▌▄▄▄ .  ·▄▄▄▄         ▄▄· ▄ •▄ ▄▄▄ .▄▄▄  
▐█ ▄█▐█ ▀█ ██ ▐▀•▀█ █▪██▌▀▄.▀·  ██· ██  ▄█▀▄ ▐█ ▌▪█▌▄▌▪▀▄.▀·▀▄ █·
 ██▀·▄█▀▀█ ▐█·█▌·.█▌█▌▐█▌▐▀▀▪▄  ▐█▪ ▐█▌▐█▌.▐▌██ ▄▄▐▀▀▄·▐▀▀▪▄▐▀▀▄ 
▐█▪·•▐█▪ ▐▌▐█▌▐█▪▄█·▐█▄█▌▐█▄▄▌  ██. ██ ▐█▌.▐▌▐███▌▐█.█▌▐█▄▄▌▐█•█▌
.▀    ▀  ▀ ▀▀▀·▀▀█.  ▀▀▀  ▀▀▀ ▀ ▀▀▀▀▀•  ▀█▄▀▪·▀▀▀ ·▀  ▀ ▀▀▀ .▀  ▀ v0.1.1
|---------------------------------------------|
|   Docker image using Debian latest stable   |
|   docker.io/pykker/pterodactyl-debian-11    |
|                                             |
|          Installed repositories:            |
| curl, wget, ca-certificates, openssl, git,  |
| tar, sqlite3, fontconfig, tzdata, iproute2, |
| nvm, nodejs-17.1.0, htop,apt-transport-https|
| dirmngr, gnupg software-properties-common,  |
|            OpenJdk 8 and nodemon            |
|  Docker image by: https://github.com/Pykera |
|---------------------------------------------|
docker-ascii

# Make internal Docker IP address available to processes.
export INTERNAL_IP=`ip route get 1 | awk '{print $NF;exit}'`

#detect java
ccat -G Plaintext="yellow" -G String="yellow" -G String="yellow" -G Punctuation="yellow" -G Keyword="yellow" -G Type="yellow" -G Literal="yellow" -G Decimal="yellow" -G Comment="yellow" -G HTMLTag="yellow"<< "docker-java"
|--------------------Detect Java---------------------|
docker-java
java8 -version
java16 -version
java17 -version
java18 -version
#detect nodejs
ccat -G Plaintext="yellow" -G String="yellow" -G String="yellow" -G Punctuation="yellow" -G Keyword="yellow" -G Type="yellow" -G Literal="yellow" -G Decimal="yellow" -G Comment="yellow" -G HTMLTag="yellow"<< "docker-node"
|------------------Detect Node/NPM/Nodemon-------------------|
docker-node
echo Node:
node -v
echo NPM:
npm -v
echo nodemon:
nodemon -v


# Replace Startup Variables
MODIFIED_STARTUP=`eval echo $(echo ${STARTUP} | sed -e 's/{{/${/g' -e 's/}}/}/g')`
ccat -G Plaintext="yellow" -G String="yellow" -G String="yellow" -G Punctuation="yellow" -G Keyword="yellow" -G Type="yellow" -G Literal="yellow" -G Decimal="yellow" -G Comment="yellow" -G HTMLTag="yellow"<< "docker-starting"
|----------------------Iniciando---------------------|
docker-starting

exec "$@"

#eval ${MODIFIED_STARTUP}
