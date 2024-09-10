#!/bin/bash

mkdir -p data/nginx/certs
mkdir -p data/vaultwarden
mkdir -p data/codeserver/workspace
mkdir -p data/codeserver/config
mkdir -p data/portainer

cp env-template .env
cp env-nextcloud-template .env-nextcloud

./self-sign-creator.sh local.vaultwarden
./self-sign-creator.sh local.code-server
./self-sign-creator.sh local.portainer
./self-sign-creator.sh local.nextcloud