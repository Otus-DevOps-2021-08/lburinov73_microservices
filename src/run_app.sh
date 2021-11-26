#!/bin/bash

docker network create reddit
docker volume create reddit_db

docker run -d --network=reddit -v reddit_db:/data/db --network-alias=post_db --network-alias=comment_db mongo:latest
docker run -d --network=reddit --network-alias=post lburinov73/post:1.0
docker run -d --network=reddit --network-alias=comment lburinov73/comment:2.0
docker run -d --network=reddit -p 9292:9292 lburinov73/ui:2.0
