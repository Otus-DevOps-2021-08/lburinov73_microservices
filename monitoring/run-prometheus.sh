#!/bin/bash

docker run --rm -p 9090:9090 -d --name prometheus prom/prometheus
