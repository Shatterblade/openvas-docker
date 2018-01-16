#Use Kali Linux as base (because openvas is in kali repos)
ARG VERSION=latest
FROM kalilinux/kali-linux-docker:${VERSION}

#Update packages, Install OpenVAS, Setup OpenVAS, Set default password,
RUN apt-get update -yq && \
    apt-get upgrade -yq && \
    apt-get install -yq --no-install-recommends openvas && \
    openvas-setup && \
    openvasmd --user=admin --new-password=admin

#Expose openvas ports - MAKE SURE TO RUN WITH -P
EXPOSE 443 9390 9391 9392 9393
