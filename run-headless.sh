#!/bin/bash

# Run the development containerised locust setup
sudo docker-compose -f docker-compose.yml -f overrides/dev-docker-compose.yml -f overrides/headless-docker-compose.yml --env-file ./overrides/.env.dev up --scale worker=3 --build -d
