ARG VERSION=latest
FROM kalilinux/kali-linux-docker:${VERSION}

RUN apt-get update -y && apt-get upgrade -y
RUN apt-get install openvas -y
