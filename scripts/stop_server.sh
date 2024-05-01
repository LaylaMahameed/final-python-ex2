#!/bin/bash
set -e

# Check if the container is running
if docker ps -q -f name=my_app_container; then
    echo "Stopping the container..."
    docker stop my_app_container
    docker rm my_app_container
    echo "Container stopped and removed."
else
    echo "Container is not running."
fi
