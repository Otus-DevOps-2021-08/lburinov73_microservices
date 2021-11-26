#!/bin/bash

docker network create reddit
docker run -d --network=reddit --network-alias=post_db_2 --network-alias=comment_db_2 mongo:latest
docker run -d --network=reddit --network-alias=post_2 -e POST_DATABASE_HOST='post_db_2' lburinov73/post:1.0
docker run -d --network=reddit --network-alias=comment_2 -e COMMENT_DATABASE_HOST='comment_db_2' lburinov73/comment:1.0
docker run -d --network=reddit -p 9292:9292 -e POST_SERVICE_HOST='post_2' -e COMMENT_SERVICE_HOST='comment_2' lburinov73/ui:1.0
