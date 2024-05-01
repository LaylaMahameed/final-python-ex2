#!/bin/bash
set -e

# Pull the latest version of the Docker image
docker pull laylmah/final-python-ex2:2-a04eadf1e70cf54755c3c6afb04f0a20e11624bc

# Run the Docker container
docker run -d --name my_app_container -p 80:80 laylmah/final-python-ex2:2-a04eadf1e70cf54755c3c6afb04f0a20e11624bc

echo "Application is running."


