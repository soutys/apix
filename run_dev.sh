#!/usr/bin/env bash

PROJ_NAME=apix_proj
docker-compose -f docker-compose.yaml -p "${PROJ_NAME}" down
docker-compose -f docker-compose.yaml -p "${PROJ_NAME}" pull
docker-compose -f docker-compose.yaml -p "${PROJ_NAME}" up --force-recreate --build --remove-orphans
