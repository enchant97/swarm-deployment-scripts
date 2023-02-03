#!/bin/env bash

./scripts/system-update

# exit if a restart is required
if [ $? -eq 3 ]
then
    exit 0
fi

./scripts/install-docker
