#!/bin/bash

# https://serverfault.com/questions/42021/how-to-ping-in-linux-until-host-is-known
# Wait for concourse to be ready at localhost:8080
until ping -c1 localhost:8080 > /dev/null 2>&1; do :; done

# This script automatically sets up the self-updating demo pipeline so you can begin experimenting
fly --target=localhost login --concourse-url=http://localhost:8080 --username=test --password=test
fly --target=localhost set-pipeline --pipeline=hello --config=pipeline.yml --non-interactive
fly --target=localhost unpause-pipeline --pipeline=hello