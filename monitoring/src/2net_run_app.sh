#!/bin/bash

docker run -d --network=front_net -p 9292:9292 --name ui lburinov73/ui:2.0
docker run -d --network=back_net --name comment lburinov73/comment:2.0
docker run -d --network=back_net --name post lburinov73/post:2.0
docker run -d --network=back_net --name mongo_db --network-alias=post_db --network-alias=comment_db mongo:latest

docker network connect front_net post
docker network connect front_net comment
