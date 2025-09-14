#!/bin/bash

# Exit on any error
set -e

# Load environment variables
export ES_HOST="http://es01:9200"

# Generate final crawler config
envsubst < ./config/crawler-config.yml > ./config/crawl-config-final.yml

# Bring everything up
docker compose up --build