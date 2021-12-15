#!/bin/bash

docker network create back_net --subnet=10.0.2.0/24
docker network create front_net --subnet=10.0.1.0/24
