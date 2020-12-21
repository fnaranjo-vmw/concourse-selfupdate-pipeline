#!/bin/bash

# https://serverfault.com/questions/42021/how-to-ping-in-linux-until-host-is-known
# Wait for concourse to be ready at localhost:8080
until ping -c1 concourse:8080 > /dev/null 2>&1; do :; done
sleep 4

# This script automatically sets up the self-updating demo pipeline so you can begin experimenting
fly --target=concourse login --concourse-url=http://concourse:8080 --username=test --password=test
fly --target=concourse set-pipeline --pipeline=hello --config=pipeline.yml --non-interactive
fly --target=concourse unpause-pipeline --pipeline=hello

"$@"