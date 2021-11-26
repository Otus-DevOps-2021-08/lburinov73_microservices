#!/bin/bash

docker rm -f $(docker ps -a -q)
#docker image prune -a -f
docker network rm reddit
#docker volume rm -f reddit_db
