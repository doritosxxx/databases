#!/bin/bash
cd "$(dirname "$0")"

docker compose -f "docker-compose.yml" down
rm -r ./dz/postgres1 &
docker compose -f "docker-compose.yml" up