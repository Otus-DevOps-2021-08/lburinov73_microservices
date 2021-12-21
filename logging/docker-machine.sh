#!/bin/bash

docker-machine create \
  --driver generic \
  --generic-ip-address=62.84.125.172 \
  --generic-ssh-user yc-user \
  --generic-ssh-key ~/.ssh/appuser \
  logging
