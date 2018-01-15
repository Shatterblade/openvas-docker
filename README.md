# What is this
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

# Other info
Default OpenVAS login is admin:admin

-P is to forward ports to host system

You can access it from the host system at localhost:9392
