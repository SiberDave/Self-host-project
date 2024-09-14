#!/bin/bash

mkdir -p data/nginx/certs
mkdir -p data/vaultwarden
mkdir -p data/codeserver/workspace
mkdir -p data/codeserver/config
mkdir -p data/portainer
mkdir -p data/prometheus

cp codeserver/env-codeserver-template .env-codeserver
cp nextcloud/env-nextcloud-template .env-nextcloud
cp vaultwarden/env-vaultwarden-template .env-vaultwarden
cp postgresql/env-postgre-template .env-postgre

nginx/self-sign-creator.sh local.vaultwarden
nginx/self-sign-creator.sh local.code-server
nginx/self-sign-creator.sh local.portainer
nginx/self-sign-creator.sh local.nextcloud
nginx/self-sign-creator.sh local.prometheus
nginx/self-sign-creator.sh local.webtop