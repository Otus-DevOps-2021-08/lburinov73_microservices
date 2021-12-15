#!/bin/bash

docker exec -it gitlab-runner gitlab-runner register \
 --url http://51.250.1.30/ \
 --non-interactive \
 --locked=false \
 --name DockerRunner \
 --executor docker \
 --docker-image alpine:latest \
 --registration-token 21L8WqKCCze9goUf3zft \
 --tag-list "linux,xenial,ubuntu,docker" \
 --run-untagged
