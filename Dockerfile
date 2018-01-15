ARG VERSION=latest
FROM kalilinux/kali-linux-docker:${VERSION}

RUN apt-get update -y && apt upgrade -y
RUN apt install openvas -y
