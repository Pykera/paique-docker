ARG ARCH=
FROM        ${ARCH}openjdk:8-slim AS java8
FROM        ${ARCH}openjdk:16-slim AS java16
FROM        ${ARCH}openjdk:17-slim-buster AS java17
FROM        ${ARCH}openjdk:18-slim AS java18
FROM        ${ARCH}ubuntu:latest

COPY --from=java8 /usr/local/openjdk-8 /usr/local/openjdk-8
COPY --from=java16 /usr/local/openjdk-16 /usr/local/openjdk-16
COPY --from=java17 /usr/local/openjdk-17 /usr/local/openjdk-17
COPY --from=java18 /usr/local/openjdk-18 /usr/local/openjdk-18

ENV java8 "/usr/local/openjdk-8/bin/"
ENV java16 "/usr/local/openjdk-16/bin/"
ENV java17 "/usr/local/openjdk-17/bin/"
ENV java18 "/usr/local/openjdk-18/bin/"

LABEL author="Gabriel Perrett" maintainer="gabriel.perrett@enxadahost.com"

ENV DEBIAN_FRONTEND=noninteractive


RUN apt-get update -y \
 && apt-get install -y curl wget ca-certificates openssl git tar sqlite3 fontconfig tzdata iproute2 apt-transport-https dirmngr gnupg software-properties-common build-essential \
&& curl -fsSL https://deb.nodesource.com/setup_current.x | bash - && apt install nodejs -y

## NODEMON
RUN npm install -g nodemon

## CCAT install
RUN wget https://github.com/jingweno/ccat/releases/download/v1.1.0/linux-amd64-1.1.0.tar.gz \
&& tar xfz linux-amd64-1.1.0.tar.gz && cp linux-amd64-1.1.0/ccat /usr/local/bin/


RUN useradd -d /home/container -ms /bin/bash -u 1001 container

USER container


USER        container
ENV         USER=container HOME=/home/container

WORKDIR     /home/container

COPY        ./entrypoint.sh /entrypoint.sh

CMD         ["/bin/bash", "/entrypoint.sh"]