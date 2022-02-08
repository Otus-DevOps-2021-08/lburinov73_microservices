#!/bin/bash

yc compute disk create \
 --name k8s \
 --size 4 \
 --description "disk for k8s"
