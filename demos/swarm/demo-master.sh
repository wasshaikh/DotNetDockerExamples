#!/bin/bash

########################
# include the magic
########################
. demo-magic.sh

clear

pe "docker version"

pe "docker swarm init"

pe "docker info"

pe "clear"

pe "docker node ls"

pe "docker service create --replicas 1 --name hello --publish 80:5000 chrch/docker-pets:2.0"

pe "docker service ls"

pe "docker service update --replicas 7 hello"

pe "docker service ps hello"

# Cleanup
pe "docker service rm hello"

# Leave Swarm
pe "docker swarm leave --force"