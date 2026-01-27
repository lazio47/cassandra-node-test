#!/bin/bash

COMPOSE_URL="https://raw.githubusercontent.com/lazio47/cassandra-node-test/refs/heads/main/docker-compose-nodes.yml"

echo "--- Initiating Cassandra ---"

echo "Downloading docker-compose.yml..."
curl -fsSL "$COMPOSE_URL" -o docker-compose.yml

if [ ! -f "docker-compose.yml" ]; then
    echo "ERROR: Failed to download docker-compose.yml"
    exit 1
fi


echo "Starting container..."
docker compose up 

echo "Done! Cassandra is running in a Docker container."
