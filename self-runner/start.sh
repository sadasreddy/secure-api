#!/bin/bash

#ORGANIZATION=$ORGANIZATION
#ACCESS_TOKEN=$ACCESS_TOKEN
#
#REG_TOKEN=$(curl -sX POST -H "Authorization: token ${ACCESS_TOKEN}" https://api.github.com/orgs/${ORGANIZATION}/actions/runners/registration-token | jq .token --raw-output)
REG_TOKEN=AEX4CWG6ECZNQOXQD6GTU7TEAB6X4

cd /home/docker/actions-runner

./config.sh --url https://github.com/gteella/secure-api --token ${REG_TOKEN}

cleanup() {
    echo "Removing runner..."
    ./config.sh remove --unattended --token ${REG_TOKEN}
}

trap 'cleanup; exit 130' INT
trap 'cleanup; exit 143' TERM

echo "running------------------"
./run.sh & wait $!