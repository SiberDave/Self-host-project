
# Self Host Project

Project for self host most application that i need on server using docker-compose and nginx as reverse proxy. It also are using tailscale as the connector between the server and the client since the domain are local domain.


## Installation

Run the initialization bash script to create directory needed and self-signed ssl

```bash
  chmod +x initialize.sh
  ./intialize.sh
```

Edit the password for code-server on .env file created from intialize.sh script.

Run docker-composer.yml to run all of application
```bash
  docker-compose -f docker-compose.yml up -d
```

Run the command inside of file postgreqsql/Initialize.sql to install database that needed by application.
    
## Application List

- Nginx
- Code-server
- Vaultwarden
- Portainer
- Nextcloud 
- Postgresql
- Mariadb
- Webtop (Web Desktop) (Unused)
- Gitlab (Unused)
- Gitea
- Dnsmasq (Tailscale dns for local domain on phone)

## Monitoring Stack

- Prometheus
- Nginx-Prometheus-Exporter
- Node Exporter
- Logging Stack (FluentD, Loki, Grafana)

## Application Architecture
![App Screenshot](https://drive.usercontent.google.com/download?id=1jNgom64DRagEPo2R0ya47r8huhjB72YB)

