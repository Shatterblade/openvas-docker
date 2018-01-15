# What is this?
This is a docker image for the OpenVAS vulnerability scanning

# How do I get this
Install Docker and do
```
docker pull shatterblade/openvas
docker run -P --name openvas --hostname kali  -it shatterblade/openvas /bin/bash
```
After this initial setup, to return to the container, do
```
docker start openvas
docker attach openvas
```
