#!/bin/bash

mkdir -p data/nginx/certs
mkdir -p data/vaultwarden
mkdir -p data/codeserver/workspace
mkdir -p data/codeserver/config

cp env-template .env

./self-sign-creator.sh local.vaultwarden
./self-sign-creator.sh local.code-server