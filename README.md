
# Self Host Project

Project for self host most application that i need on server using docker-compose and nginx as reverse proxy.


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

    
## Application List

- Nginx
- Code-server
- Vaultwarden
- Portainer
- Nextcloud (Unstable)
- Postgresql
- Webtop (Web Desktop)

## Monitoring Stack

- Prometheus
- Nginx-Prometheus-Exporter

## Application Architecture
![App Screenshot](https://drive.usercontent.google.com/download?id=1jNgom64DRagEPo2R0ya47r8huhjB72YB)

