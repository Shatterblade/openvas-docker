#Use Kali Linux as base (because openvas is in kali repos)
ARG VERSION=latest
FROM kalilinux/kali-linux-docker:${VERSION}

#Update packages
RUN apt-get update -y && apt-get upgrade -y \
    apt-get install openvas -y —no-install-recommends \
    openvas-setup \
    openvasmd --user=admin --new-password=admin

#Expose openvas ports - MAKE SURE TO RUN WITH -P
EXPOSE 443 9390 9391 9392 9393
