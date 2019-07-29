# Redirect traffic from inside of docker containers to proxy server

## inspired by
[https://github.com/ncarlier/dockerfiles/tree/master/redsocks]

## Usage:

     docker run -ti -d --name docker-proxy-redsocks --net=host \
     --privileged docker-proxy-redsocks:0.1

## Usage with docker-compose
     docker-compose up -d
          WARNING: The Docker Engine you're using is running in swarm mode.

          Compose does not use swarm mode to deploy services to multiple nodes in a swarm. All containers will be scheduled on the current node.

          To deploy your application across the swarm, use `docker stack deploy`.

          Starting dockerproxyredsocks_proxy_1 ... 
          Starting dockerproxyredsocks_proxy_1 ... done

## Usage with docker swarm is not posible now because of ...
          docker stack deploy --compose-file docker-compose.yml proxy
          Ignoring unsupported options: privileged
          

## Todo
FIrst version, all configs are hardcoded in image
- use env for proxy setting
- use config files for running docker
- create docker-compose.yml file
- create docker-stack.yml file

