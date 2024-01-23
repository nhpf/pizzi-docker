#!/bin/bash

MODULES=("mod1" "mod2" "mod3")

for MODULE in "${MODULES[@]}"; do
    echo "Building and running ${MODULE} container..."
    docker-compose build --build-arg MODULE_NAME=${MODULE} ${MODULE}
    docker-compose run --rm ${MODULE}
done

