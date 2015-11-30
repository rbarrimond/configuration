#!/usr/bin/env bash

set -e


export ROOT_DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )

build/utils/cf-common.sh

# i need to deploy the config server
# find its URL
# then set it as a variable when deploying the config client
# as a result, there is a NOOP in the config-server directory

echo "deploying CONFIGURATION" ;


deploy_app configuration-service
deploy_service configuration-service

deploy_app configuration-client