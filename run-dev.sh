#!/bin/bash

# Scaling value - number of locust workers
SCALE=$1

# Run the development containerised locust setup
sudo docker-compose -f docker-compose.yml -f overrides/dev-docker-compose.yml --env-file ./overrides/.env.dev up --scale worker=$SCALE --build -d
