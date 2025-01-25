#!/bin/bash
set -e

# Stop the running container (if any)
# Get all running container IDs
containerids=$(docker ps --format "{{.ID}}")

# Check if there are any running containers
if [ -n "$containerids" ]; then
  # Stop and remove all running containers
  docker rm -f $containerids
else
  echo "No running containers to remove."
fi

