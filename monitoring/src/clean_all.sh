#!/bin/bash

docker rm -f $(docker ps -a -q)
docker image prune -a -f
docker network rm reddit
docker network rm front_net
docker network rm back_net
docker volume rm -f reddit_db
