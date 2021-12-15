#!/bin/bash

docker pull mongo:3.2
docker build -t lburinov73/post:2.0 ./post-py
docker build -t lburinov73/comment:2.0 ./comment
docker build -t lburinov73/ui:2.0 ./ui
