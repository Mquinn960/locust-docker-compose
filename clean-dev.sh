#!/bin/bash

# Clean up development artefacts
sudo docker-compose -f docker-compose.yml -f overrides/dev-docker-compose.yml --env-file ./overrides/.env.dev down --remove-orphans
