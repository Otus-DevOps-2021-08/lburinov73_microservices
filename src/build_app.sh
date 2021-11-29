#!/bin/bash

docker pull mongo:latest
docker build -t lburinov73/post:2.0 ./post-py
docker build -t lburinov73/comment:2.0 ./comment
docker build -t lburinov73/ui:2.0 ./ui
