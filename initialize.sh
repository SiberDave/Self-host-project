#!/bin/bash

mkdir -p data/nginx/certs
mkdir -p data/vaultwarden
mkdir -p data/codeserver/workspace
mkdir -p data/codeserver/config
mkdir -p data/portainer
mkdir -p data/prometheus
mkdir -p data/dnsmasq
mkdir -p data/fluentd

cp prometheus/prometheus.yml data/prometheus/prometheus.yml
cp nginx/nginx.conf data/nginx/nginx.conf
# cp nginx/fastcgi.conf data/nginx/fastcgi.conf
cp dnsmasq/dnsmasq.conf data/dnsmasq/dnsmasq.conf
cp fluentd/fluentd.conf data/fluentd/fluentd.conf

cp codeserver/env-codeserver-template .env-codeserver
cp nextcloud/env-nextcloud-template .env-nextcloud
cp vaultwarden/env-vaultwarden-template .env-vaultwarden
cp postgresql/env-postgre-template .env-postgre
cp mariadb/env-maria-template .env-maria
cp gitea/env-gitea-template .env-gitea
cp dnsmasq/env-dnsmasq-template .env-dnsmasq

nginx/self-sign-creator.sh local.vaultwarden
nginx/self-sign-creator.sh local.code-server
nginx/self-sign-creator.sh local.portainer
nginx/self-sign-creator.sh local.nextcloud
nginx/self-sign-creator.sh local.prometheus
nginx/self-sign-creator.sh local.gitea
nginx/self-sign-creator.sh local.dnsmasq
nginx/self-sign-creator.sh local.grafana
nginx/self-sign-creator.sh local.trillium
# nginx/self-sign-creator.sh local.miniclass
# nginx/self-sign-creator.sh local.gitlab
# nginx/self-sign-creator.sh local.webtop

