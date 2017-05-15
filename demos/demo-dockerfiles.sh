#!/bin/bash

########################
# include the magic
########################
. demo-magic.sh

# hide the evidence
clear

# Put your stuff here
# clean up previous builds
pe "docker image ls webapp -q | xargs docker rmi -f"
pe "clear"

pe "cd .. && ls -l"

# build bad dockerfile
pe "docker build -t webapp:bad WebApp.BadDockerfile/"
pe "clear"
pe "docker image ls"

# build effective image using docker-compose
pe "ls -l"
pe "docker-compose -f docker-compose.ci.build.yml run ci-build"
pe "clear"
pe "ls -l WebApp/obj/Docker/publish/"
pe "clear"
pe "docker build -t webapp:good WebApp/"
pe "docker image ls webapp"


# build effective image using Dockerfile multistage build
pe "clear"
pe "ls -l"
pe "docker build -t webapp:multistage -f Dockerfile.MultiStage ."
pe "clear"
pe "docker image ls webapp"