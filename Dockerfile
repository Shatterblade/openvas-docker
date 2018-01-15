#Use Kali Linux as base (because openvas is in kali repos)
ARG VERSION=latest
FROM kalilinux/kali-linux-docker:${VERSION}

#Update packages
RUN apt-get update -y && apt-get upgrade -y

#Install openvas
RUN apt-get install openvas -y

#Setup openvas
RUN openvas-setup

#Default login: admin:admin
openvasmd --user=admin --new-password=admin

#Expose openvas ports - MAKE SURE TO RUN WITH -P
EXPOSE 443 9390 9391 9392 9393
