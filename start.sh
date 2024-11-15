#!/bin/bash

echo 'Initializing project ...'
docker compose -f docker-compose.yml up -d --build