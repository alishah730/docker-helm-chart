#!/bin/bash
NAME=ali-activemq
docker build --rm -t $NAME .
TAG=1.0.0
#cat ~/GH_TOKEN.txt | docker login docker.pkg.github.com -u alishah730 --password-stdin
# Step 2: Tag
docker tag $NAME docker.pkg.github.com/alishah730/docker/$NAME:$TAG
# Step 3: Publish
docker push docker.pkg.github.com/alishah730/docker/$NAME:$TAG