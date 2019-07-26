# Redirect traffic from inside of docker containers to proxy server

## inspired by
[https://github.com/ncarlier/dockerfiles/tree/master/redsocks]

##Usage:

     docker run -ti -d --name docker-proxy-redsocks --net=host \
     --privileged docker-proxy-redsocks:0.1
     
## Todo
FIrst version, all configs are hardcoded in image
- use env for proxy setting
- use config files for running docker
- create docker-compose.yml file
- create docker-stack.yml file

